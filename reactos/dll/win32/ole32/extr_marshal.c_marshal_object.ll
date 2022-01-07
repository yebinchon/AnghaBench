; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_marshal_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_marshal_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.stub_manager = type { i32, i32 }
%struct.ifstub = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@SORF_NULL = common dso_local global i32 0, align 4
@MSHLFLAGS_TABLEWEAK = common dso_local global i32 0, align 4
@SORFP_TABLEWEAK = common dso_local global i32 0, align 4
@MSHLFLAGS_NOPING = common dso_local global i32 0, align 4
@SORF_NOPING = common dso_local global i32 0, align 4
@MSHLFLAGS_TABLESTRONG = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Failed to create an IRpcStubBuffer from IPSFactory for %s with error 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"couldn't get IPSFactory buffer for interface %s\0A\00", align 1
@E_NOINTERFACE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NORMALEXTREFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @marshal_object(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.stub_manager*, align 8
  %17 = alloca %struct.ifstub*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = call i64 @apartment_getoxid(i32* %22, i32* %24)
  store i64 %25, i64* %19, align 8
  %26 = load i64, i64* %19, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i64, i64* %19, align 8
  store i64 %30, i64* %8, align 8
  br label %206

31:                                               ; preds = %7
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @apartment_createwindowifneeded(i32* %32)
  store i64 %33, i64* %19, align 8
  %34 = load i64, i64* %19, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %19, align 8
  store i64 %38, i64* %8, align 8
  br label %206

39:                                               ; preds = %31
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call %struct.stub_manager* @get_stub_manager_from_object(i32* %40, i32* %41, i32 %42)
  store %struct.stub_manager* %43, %struct.stub_manager** %16, align 8
  %44 = icmp ne %struct.stub_manager* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %46, i64* %8, align 8
  br label %206

47:                                               ; preds = %39
  %48 = load i32, i32* @SORF_NULL, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @MSHLFLAGS_TABLEWEAK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @SORFP_TABLEWEAK, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @MSHLFLAGS_NOPING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @SORF_NOPING, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %74 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @MSHLFLAGS_TABLESTRONG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @MSHLFLAGS_TABLEWEAK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %82, %72
  %88 = phi i1 [ true, %72 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call %struct.ifstub* @stub_manager_find_ifstub(%struct.stub_manager* %90, i32 %91, i32 %92)
  store %struct.ifstub* %93, %struct.ifstub** %17, align 8
  %94 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %95 = icmp ne %struct.ifstub* %94, null
  br i1 %95, label %166, label %96

96:                                               ; preds = %87
  store i32* null, i32** %20, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @IsEqualIID(i32 %97, i32* @IID_IUnknown)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @get_facbuf_for_iid(i32 %101, i32** %21)
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* @S_OK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load i32*, i32** %21, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %110 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @IPSFactoryBuffer_CreateStub(i32* %107, i32 %108, i32 %111, i32** %20)
  store i64 %112, i64* %19, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = call i32 @IPSFactoryBuffer_Release(i32* %113)
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @debugstr_guid(i32 %119)
  %121 = load i64, i64* %19, align 8
  %122 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %118, %106
  br label %129

124:                                              ; preds = %100
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @debugstr_guid(i32 %125)
  %127 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i64, i64* @E_NOINTERFACE, align 8
  store i64 %128, i64* %19, align 8
  br label %129

129:                                              ; preds = %124, %123
  br label %130

130:                                              ; preds = %129, %96
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* @S_OK, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %136 = load i32*, i32** %20, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i8*, i8** %14, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call %struct.ifstub* @stub_manager_new_ifstub(%struct.stub_manager* %135, i32* %136, i32 %137, i32 %138, i8* %139, i32 %140)
  store %struct.ifstub* %141, %struct.ifstub** %17, align 8
  %142 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %143 = icmp ne %struct.ifstub* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %134
  %145 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %145, i64* %19, align 8
  br label %146

146:                                              ; preds = %144, %134
  br label %147

147:                                              ; preds = %146, %130
  %148 = load i32*, i32** %20, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32*, i32** %20, align 8
  %152 = call i32 @IRpcStubBuffer_Release(i32* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i64, i64* %19, align 8
  %155 = load i64, i64* @S_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %159 = call i32 @stub_manager_int_release(%struct.stub_manager* %158)
  %160 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @stub_manager_ext_release(%struct.stub_manager* %160, i32 0, i32 %161, i32 %162)
  %164 = load i64, i64* %19, align 8
  store i64 %164, i64* %8, align 8
  br label %206

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %87
  %167 = load i32, i32* %18, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @NORMALEXTREFS, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FALSE, align 4
  %178 = call i32 @stub_manager_ext_addref(%struct.stub_manager* %173, i32 %176, i32 %177)
  br label %195

179:                                              ; preds = %166
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @MSHLFLAGS_TABLESTRONG, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %188 = load i32, i32* @FALSE, align 4
  %189 = call i32 @stub_manager_ext_addref(%struct.stub_manager* %187, i32 1, i32 %188)
  br label %194

190:                                              ; preds = %179
  %191 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %192 = load i32, i32* @TRUE, align 4
  %193 = call i32 @stub_manager_ext_addref(%struct.stub_manager* %191, i32 0, i32 %192)
  br label %194

194:                                              ; preds = %190, %186
  br label %195

195:                                              ; preds = %194, %169
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @RPC_RegisterInterface(i32 %196)
  %198 = load %struct.ifstub*, %struct.ifstub** %17, align 8
  %199 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.stub_manager*, %struct.stub_manager** %16, align 8
  %204 = call i32 @stub_manager_int_release(%struct.stub_manager* %203)
  %205 = load i64, i64* @S_OK, align 8
  store i64 %205, i64* %8, align 8
  br label %206

206:                                              ; preds = %195, %157, %45, %37, %29
  %207 = load i64, i64* %8, align 8
  ret i64 %207
}

declare dso_local i64 @apartment_getoxid(i32*, i32*) #1

declare dso_local i64 @apartment_createwindowifneeded(i32*) #1

declare dso_local %struct.stub_manager* @get_stub_manager_from_object(i32*, i32*, i32) #1

declare dso_local %struct.ifstub* @stub_manager_find_ifstub(%struct.stub_manager*, i32, i32) #1

declare dso_local i32 @IsEqualIID(i32, i32*) #1

declare dso_local i64 @get_facbuf_for_iid(i32, i32**) #1

declare dso_local i64 @IPSFactoryBuffer_CreateStub(i32*, i32, i32, i32**) #1

declare dso_local i32 @IPSFactoryBuffer_Release(i32*) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.ifstub* @stub_manager_new_ifstub(%struct.stub_manager*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @IRpcStubBuffer_Release(i32*) #1

declare dso_local i32 @stub_manager_int_release(%struct.stub_manager*) #1

declare dso_local i32 @stub_manager_ext_release(%struct.stub_manager*, i32, i32, i32) #1

declare dso_local i32 @stub_manager_ext_addref(%struct.stub_manager*, i32, i32) #1

declare dso_local i32 @RPC_RegisterInterface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
