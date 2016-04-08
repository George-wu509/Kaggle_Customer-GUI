function varargout = Customer_GUI(varargin)
% CUSTOMER_GUI MATLAB code for Customer_GUI.fig

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Customer_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Customer_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
end

function Customer_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Customer_GUI (see VARARGIN)

% Choose default command line output for Customer_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Customer_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = Customer_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Kag_predataGUI(hObject,handles);
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
fea=get(handles.popupmenu2,'Value');
if fea==1
    p.feature_select=0;
    set(handles.edit3,'Visible','off');
    set(handles.text9,'Visible','off');
elseif fea==2
    set(handles.text9,'Visible','on');
    set(handles.edit3,'Visible','on');
    guidata(hObject,handles);
    %p.feature_select=str2double(get(handles.edit3,'string'));
end

end

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
end

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load data.mat;
guidata(hObject,handles);
outcsv(handles.p,out);
end


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
end

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
end

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
guidata(hObject,handles);
end

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

function Kag_predataGUI(hObject,handles)

p=pset(hObject,handles);handles.p=p;
set(handles.pushbutton2,'enable','on');
set(handles.edit4,'enable','off');
set(handles.uitable2,'enable','off');
guidata(hObject,handles);
eval([  'set(handles.pushbutton2,''String'',''' num2str(0) '/' num2str(p.crossvaliN) ''');'  ]);
guidata(hObject,handles);
pause(0.1);
load_train(p,hObject,handles);
set(handles.pushbutton2,'string','create csv file');
end
function p=pset(hObject,handles)

p.predata='pre_data';
guidata(hObject,handles);
p.pre_data=get(handles.popupmenu1,'Value');
p.crossvaliN=str2double(get(handles.edit2,'string'));
fea=get(handles.popupmenu2,'Value');
if fea==1
    p.feature_select=0;
elseif fea==2
    p.feature_select=str2num(get(handles.edit3,'string'));
end
p.pre2_thred =0.8;
p.classifier=get(handles.popupmenu3,'Value');
p.out_name='trainedClassifier';
end

% Load data and pre-data
function load_train(p,hObject,handles)

eval(['load(''' p.predata '/train.mat'')']);
eval(['load(''' p.predata '/test.mat'')']);

% Select features
if p.feature_select~=0
    train_data=train_data(:,p.feature_select);
    test_data=test_data(:,p.feature_select);
    train_dataID=train_dataID(:,p.feature_select);
    test_dataID=test_dataID(:,p.feature_select);
else
end

% cut datasets into 2 part(validation)
AUC=zeros(1,p.crossvaliN);out_matrix=zeros(size(test_data,1),p.crossvaliN);
for vai=1:p.crossvaliN
    [AUC(1,vai),out_matrix(:,vai),classifier{vai}]=vali_data(p,vai,train_data,test_data,train_out);
    eval([  'set(handles.pushbutton2,''String'',''' num2str(vai) '/' num2str(p.crossvaliN) ''');'  ]);
    guidata(hObject,handles);
    pause(0.1);
end
out=(mean(out_matrix'))';
AUC_mean=mean(AUC);AUC_show=AUC';
set(handles.edit4,'enable','on');
set(handles.uitable2,'enable','on');
guidata(hObject,handles);
eval([  'set(handles.uitable2,''data'',AUC_show);'  ]);
eval([  'set(handles.edit4,''String'',''' num2str(AUC_mean) ''');'  ]);
guidata(hObject,handles);

% out sumitted csv file
%outcsv(p,out);
save('data.mat','p','out','out_matrix','train_data','train_dataID','train_out','test_data','test_dataID','AUC');
end
function [out1,out2,out3]=pre_data(data1,data2,data3,p)

switch p.pre_data
    case 2
        [out1,out2,out3] = maxmin(data1,data2,data3,p);
    case 3
        [out1,out2,out3] = thred(data1,data2,data3,p);
    case 1
        out1=data1;out2=data2;out3=data3;
end
    function [out1,out2,out3]=maxmin(data1,data2,data3,p)
       out1=zeros(size(data1));out2=zeros(size(data2));out3=zeros(size(data3));
       data1(data1<-100000)=0;data2(data2<-100000)=0;data3(data3<-100000)=0;
       maxmin=[max(data1);min(data1)];       
       for i=1:size(data1,2)
           if isempty(find(data1(:,i)))==1
           else
               out1(:,i)=(data1(:,i)-maxmin(2,i))/(maxmin(1,i)-maxmin(2,i));
           end
          if isempty(find(data2(:,i)))==1
           else
               out2(:,i)=(data2(:,i)-maxmin(2,i))/(maxmin(1,i)-maxmin(2,i));
          end
          if isempty(find(data3(:,i)))==1
           else
               out3(:,i)=(data3(:,i)-maxmin(2,i))/(maxmin(1,i)-maxmin(2,i));
           end
       end
    end
    function [out1,out2,out3] = thred(data1,data2,data3,p)
        out1=zeros(size(data1));out2=zeros(size(data2));out3=zeros(size(data3));
        for i=1:size(data1,2)
            if isempty(find(data1(:,i)))==1
            else                
               for j=1:size(data1(:,i),1)
                  if data1(j,i)> max(data1(:,i))*p.pre2_thred
                      out1(j,i)=1;                         
                  end
               end
            end 
            if isempty(find(data2(:,i)))==1
            else                
               for j=1:size(data2(:,i),1)
                  if data2(j,i)> max(data2(:,i))*p.pre2_thred
                      out2(j,i)=1;                         
                  end
               end
            end
            if isempty(find(data3(:,i)))==1
            else                
               for j=1:size(data3(:,i),1)
                  if data3(j,i)> max(data3(:,i))*p.pre2_thred
                      out3(j,i)=1;                         
                  end
               end
            end
        end
    end
end
function [AUC,out,classifier]=vali_data(p,vai,train_data,test_data,train_out)

    % training and valida dataset
    valiN=fix(size(train_data,1)/p.crossvaliN);div_train1=[];
    if vai==p.crossvaliN
        div_train2=(vai-1)*valiN+1:size(train_data,1);
    else
        div_train2=(vai-1)*valiN+1:vai*valiN;
    end
    for t=1:size(train_data,1)
        if isempty(find(div_train2==t))==1
            div_train1=[div_train1 t];
        end
    end
    pre_train1_data=train_data(div_train1,:);pre_train2_data=train_data(div_train2,:);
    train1_out=train_out(div_train1,:);train2_out=train_out(div_train2,:);

    % pre-process data methods
    [train1_data,train2_data,test_data]=pre_data(pre_train1_data,pre_train2_data,test_data,p);
    [AUC,out,classifier]=Kag_compareGUI(p,train1_data,train1_out,train2_data,train2_out,test_data);
end
function [AUC,out,classifier]=Kag_compareGUI(p,train1_data,train1_out,train2_data,train2_out,test_data)

% Different classifier
switch p.classifier
    case 1
        classifier{p.classifier} = fitcnb(train1_data,train1_out); % multiclass naive Bayes model   
    case 2
        classifier{p.classifier} = fitctree(train1_data,train1_out); % decision tree 
    case 3
        classifier{p.classifier} = fitcdiscr(train1_data,train1_out); % discriminant analysis classifier
    case 4
        classifier{p.classifier} = fitcknn(train1_data,train1_out); % k-nearest neighbor classifier
    case 5
        classifier{p.classifier} = fitcsvm(train1_data,train1_out); % binary support vector machine classifier   
    case 6
        classifier{p.classifier} = fitensemble(train1_data,train1_out); % Classification Ensembles
end

train2_model = predict(classifier{p.classifier},train2_data);
out = predict(classifier{p.classifier},test_data);
[~,~,~,AUC] = perfcurve(train2_out,train2_model,'1');

end
function outcsv(p,out)
eval('load(''data.mat'')');
p.csv_name=[p.out_name '_result.csv'];eval(['load(''' p.predata '/ID.mat'')']);

p.x={'ID','TARGET'};
fid=fopen(p.csv_name,'wt');
fprintf(fid, '%s,', p.x{1,1:end-1}) ;
fprintf(fid, '%s\n', p.x{1,end}) ;
fclose(fid) ;
%ID1=ID(ID<100000);out1=out(ID<100000);
%ID2=ID(ID>=100000);out2=out(ID>=100000);
%dlmwrite(p.csv_name,[ID1 out1],'delimiter',',','-append');
dlmwrite(p.csv_name,[ID out],'delimiter',',','-append','precision', 6);
%clear p fid run_name rocX rocY AUC ID1 ID2 out1 out2
end


% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
guidata(hObject,handles);
end
