; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_create_storagefile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_create_storagefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STG_E_INVALIDFLAG = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@STG_E_INVALIDPOINTER = common dso_local global i32 0, align 4
@MIN_BIG_BLOCK_SIZE = common dso_local global i64 0, align 8
@MAX_BIG_BLOCK_SIZE = common dso_local global i64 0, align 8
@STG_E_INVALIDPARAMETER = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i64 0, align 8
@create_storagefile.prefix = internal constant [4 x i8] c"STO\00", align 1
@STG_E_INSUFFICIENTMEMORY = common dso_local global i32 0, align 4
@TRUNCATE_EXISTING = common dso_local global i32 0, align 4
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@FILE_FLAG_RANDOM_ACCESS = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@STG_E_FILEALREADYEXISTS = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"<-- %p  r = %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.TYPE_6__*, i32, i8**)* @create_storagefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_storagefile(i8* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %26, i64* %15, align 8
  %27 = load i32, i32* @STG_E_INVALIDFLAG, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = load i8**, i8*** %13, align 8
  %33 = icmp eq i8** %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @STG_E_INVALIDPOINTER, align 4
  store i32 %35, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %178

36:                                               ; preds = %6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MIN_BIG_BLOCK_SIZE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAX_BIG_BLOCK_SIZE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @STG_E_INVALIDPARAMETER, align 4
  store i32 %49, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %178

50:                                               ; preds = %42, %36
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @STGM_SHARE_MODE(i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @validateSTGM(i32 %59)
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %172

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @STGM_ACCESS_MODE(i32 %65)
  switch i32 %66, label %68 [
    i32 128, label %67
    i32 129, label %67
  ]

67:                                               ; preds = %64, %64
  br label %69

68:                                               ; preds = %64
  br label %172

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @STGM_TRANSACTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @STGM_SHARE_MODE(i32 %75)
  %77 = load i64, i64* @STGM_SHARE_EXCLUSIVE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %172

80:                                               ; preds = %74, %69
  %81 = load i8*, i8** %8, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* @MAX_PATH, align 4
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %24, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %25, align 8
  %88 = trunc i64 %85 to i32
  %89 = call i32 @memset(i8* %87, i32 0, i32 %88)
  %90 = trunc i64 %29 to i32
  %91 = call i32 @memset(i8* %31, i32 0, i32 %90)
  %92 = load i32, i32* @MAX_PATH, align 4
  %93 = call i64 @GetTempPathW(i32 %92, i8* %87)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 46, i8* %96, align 16
  br label %97

97:                                               ; preds = %95, %83
  %98 = call i64 @GetTempFileNameW(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @create_storagefile.prefix, i64 0, i64 0), i32 0, i8* %31)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i8* %31, i8** %8, align 8
  br label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @STG_E_INSUFFICIENTMEMORY, align 4
  store i32 %102, i32* %16, align 4
  store i32 2, i32* %23, align 4
  br label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @TRUNCATE_EXISTING, align 4
  store i32 %104, i32* %19, align 4
  store i32 0, i32* %23, align 4
  br label %105

105:                                              ; preds = %101, %103
  %106 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %23, align 4
  switch i32 %107, label %178 [
    i32 0, label %108
    i32 2, label %172
  ]

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %80
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @GetCreationModeFromSTGM(i32 %110)
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @GetShareModeFromSTGM(i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @GetAccessModeFromSTGM(i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i32, i32* @FILE_FLAG_RANDOM_ACCESS, align 4
  %123 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %20, align 4
  br label %129

125:                                              ; preds = %112
  %126 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %127 = load i32, i32* @FILE_FLAG_RANDOM_ACCESS, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %125, %121
  %130 = load i8**, i8*** %13, align 8
  store i8* null, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i64 @CreateFileW(i8* %131, i32 %132, i32 %133, i32* null, i32 %134, i32 %135, i32 0)
  store i64 %136, i64* %15, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = call i64 (...) @GetLastError()
  %142 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @STG_E_FILEALREADYEXISTS, align 4
  store i32 %145, i32* %16, align 4
  br label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @E_FAIL, align 4
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %146, %144
  br label %172

149:                                              ; preds = %129
  %150 = load i64, i64* %15, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @TRUE, align 4
  %154 = load i32, i32* @TRUE, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @Storage_Construct(i64 %150, i8* %151, i32* null, i32 %152, i32 %153, i32 %154, i64 %157, %struct.TYPE_5__** %14)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i64 @FAILED(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %172

163:                                              ; preds = %149
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %12, align 4
  %167 = load i8**, i8*** %13, align 8
  %168 = call i32 @IStorage_QueryInterface(i32* %165, i32 %166, i8** %167)
  store i32 %168, i32* %16, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = call i32 @IStorage_Release(i32* %170)
  br label %172

172:                                              ; preds = %163, %105, %162, %148, %79, %68, %63
  %173 = load i8**, i8*** %13, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %174, i32 %175)
  %177 = load i32, i32* %16, align 4
  store i32 %177, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %178

178:                                              ; preds = %172, %105, %48, %34
  %179 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @STGM_SHARE_MODE(i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @validateSTGM(i32) #2

declare dso_local i32 @STGM_ACCESS_MODE(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @GetTempPathW(i32, i8*) #2

declare dso_local i64 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @GetCreationModeFromSTGM(i32) #2

declare dso_local i32 @GetShareModeFromSTGM(i32) #2

declare dso_local i32 @GetAccessModeFromSTGM(i32) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @Storage_Construct(i64, i8*, i32*, i32, i32, i32, i64, %struct.TYPE_5__**) #2

declare dso_local i32 @IStorage_QueryInterface(i32*, i32, i8**) #2

declare dso_local i32 @IStorage_Release(i32*) #2

declare dso_local i32 @TRACE(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
