; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosCreateFileEx.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosCreateFileEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"DosCreateFileEx: FilePath \22%s\22, AccessShareModes 0x%04X, CreateActionFlags 0x%04X, Attributes 0x%04X\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@TRUNCATE_EXISTING = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@OPEN_ALWAYS = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ERROR_TOO_MANY_OPEN_FILES = common dso_local global i32 0, align 4
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@Sda = common dso_local global %struct.TYPE_16__* null, align 8
@INVALID_DOS_HANDLE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosCreateFileEx(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @DPRINT1(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.TYPE_15__* @DosGetDevice(i32 %31)
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %16, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %6
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_15__*)* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %45 = call i32 %43(%struct.TYPE_15__* %44)
  br label %46

46:                                               ; preds = %40, %35
  br label %153

47:                                               ; preds = %6
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 3
  switch i32 %49, label %58 [
    i32 0, label %50
    i32 1, label %52
    i32 2, label %54
  ]

50:                                               ; preds = %47
  %51 = load i32, i32* @GENERIC_READ, align 4
  store i32 %51, i32* %18, align 4
  br label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @GENERIC_WRITE, align 4
  store i32 %53, i32* %18, align 4
  br label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @GENERIC_READ, align 4
  %56 = load i32, i32* @GENERIC_WRITE, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %18, align 4
  br label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %59, i32* %7, align 4
  br label %235

60:                                               ; preds = %54, %52, %50
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 4
  %63 = and i32 %62, 7
  switch i32 %63, label %79 [
    i32 0, label %64
    i32 1, label %70
    i32 2, label %71
    i32 3, label %73
    i32 4, label %75
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* @FILE_SHARE_READ, align 4
  %66 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %19, align 4
  br label %81

70:                                               ; preds = %60
  store i32 0, i32* %19, align 4
  br label %81

71:                                               ; preds = %60
  %72 = load i32, i32* @FILE_SHARE_READ, align 4
  store i32 %72, i32* %19, align 4
  br label %81

73:                                               ; preds = %60
  %74 = load i32, i32* @FILE_SHARE_WRITE, align 4
  store i32 %74, i32* %19, align 4
  br label %81

75:                                               ; preds = %60
  %76 = load i32, i32* @FILE_SHARE_READ, align 4
  %77 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %19, align 4
  br label %81

79:                                               ; preds = %60
  %80 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %80, i32* %7, align 4
  br label %235

81:                                               ; preds = %75, %73, %71, %70, %64
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %95 [
    i32 0, label %83
    i32 1, label %85
    i32 2, label %87
    i32 16, label %89
    i32 17, label %91
    i32 18, label %93
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* @OPEN_EXISTING, align 4
  store i32 %84, i32* %20, align 4
  br label %97

85:                                               ; preds = %81
  %86 = load i32, i32* @OPEN_EXISTING, align 4
  store i32 %86, i32* %20, align 4
  br label %97

87:                                               ; preds = %81
  %88 = load i32, i32* @TRUNCATE_EXISTING, align 4
  store i32 %88, i32* %20, align 4
  br label %97

89:                                               ; preds = %81
  %90 = load i32, i32* @CREATE_NEW, align 4
  store i32 %90, i32* %20, align 4
  br label %97

91:                                               ; preds = %81
  %92 = load i32, i32* @OPEN_ALWAYS, align 4
  store i32 %92, i32* %20, align 4
  br label %97

93:                                               ; preds = %81
  %94 = load i32, i32* @CREATE_ALWAYS, align 4
  store i32 %94, i32* %20, align 4
  br label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %96, i32* %7, align 4
  br label %235

97:                                               ; preds = %93, %91, %89, %87, %85, %83
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, 128
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %21, align 4
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 16, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  store i32* null, i32** %103, align 8
  %104 = load i32, i32* %21, align 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @CreateFileA(i32 %106, i32 %107, i32 %108, %struct.TYPE_13__* %22, i32 %109, i32 %110, i32* null)
  store i64 %111, i64* %15, align 8
  %112 = call i64 (...) @GetLastError()
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %97
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %235

119:                                              ; preds = %97
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @CloseHandle(i64 %123)
  %125 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %125, i32* %7, align 4
  br label %235

126:                                              ; preds = %119
  %127 = load i32, i32* %12, align 4
  switch i32 %127, label %152 [
    i32 1, label %128
    i32 2, label %130
    i32 16, label %132
    i32 17, label %134
    i32 18, label %143
  ]

128:                                              ; preds = %126
  %129 = load i32*, i32** %9, align 8
  store i32 1, i32* %129, align 4
  br label %152

130:                                              ; preds = %126
  %131 = load i32*, i32** %9, align 8
  store i32 3, i32* %131, align 4
  br label %152

132:                                              ; preds = %126
  %133 = load i32*, i32** %9, align 8
  store i32 2, i32* %133, align 4
  br label %152

134:                                              ; preds = %126
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32*, i32** %9, align 8
  store i32 1, i32* %139, align 4
  br label %142

140:                                              ; preds = %134
  %141 = load i32*, i32** %9, align 8
  store i32 2, i32* %141, align 4
  br label %142

142:                                              ; preds = %140, %138
  br label %152

143:                                              ; preds = %126
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32*, i32** %9, align 8
  store i32 3, i32* %148, align 4
  br label %151

149:                                              ; preds = %143
  %150 = load i32*, i32** %9, align 8
  store i32 2, i32* %150, align 4
  br label %151

151:                                              ; preds = %149, %147
  br label %152

152:                                              ; preds = %126, %151, %142, %132, %130, %128
  br label %153

153:                                              ; preds = %152, %46
  %154 = call i32 (...) @DosFindFreeDescriptor()
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %23, align 4
  %156 = icmp eq i32 %155, 255
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64, i64* %15, align 8
  %159 = call i32 @CloseHandle(i64 %158)
  %160 = load i32, i32* @ERROR_TOO_MANY_OPEN_FILES, align 4
  store i32 %160, i32* %7, align 4
  br label %235

161:                                              ; preds = %153
  %162 = load i32, i32* %23, align 4
  %163 = call %struct.TYPE_14__* @DosGetFileDescriptor(i32 %162)
  store %struct.TYPE_14__* %163, %struct.TYPE_14__** %24, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %165 = call i32 @RtlZeroMemory(%struct.TYPE_14__* %164, i32 40)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @RtlFillMemory(i32 %168, i32 4, i8 signext 32)
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %171 = icmp ne %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %197

172:                                              ; preds = %161
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @RtlCopyMemory(i32 %187, i32 %191, i32 %195)
  br label %216

197:                                              ; preds = %161
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @GetFileAttributesA(i32 %201)
  %203 = call i32 @LOBYTE(i32 %202)
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  %206 = load i64, i64* %15, align 8
  %207 = call i32 @GetFileSize(i64 %206, i32* null)
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load i64, i64* %15, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 3
  store i64 %210, i64* %212, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %215 = call i32 @StoreNameInSft(i32 %213, %struct.TYPE_14__* %214)
  br label %216

216:                                              ; preds = %197, %172
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** @Sda, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %23, align 4
  %223 = call i32 @DosOpenHandle(i32 %222)
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* @INVALID_DOS_HANDLE, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %216
  %228 = load i64, i64* %15, align 8
  %229 = call i32 @CloseHandle(i64 %228)
  %230 = load i32, i32* @ERROR_TOO_MANY_OPEN_FILES, align 4
  store i32 %230, i32* %7, align 4
  br label %235

231:                                              ; preds = %216
  %232 = load i32, i32* %17, align 4
  %233 = load i32*, i32** %8, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %231, %227, %157, %122, %117, %95, %79, %58
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i32 @DPRINT1(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @DosGetDevice(i32) #1

declare dso_local i64 @CreateFileA(i32, i32, i32, %struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @DosFindFreeDescriptor(...) #1

declare dso_local %struct.TYPE_14__* @DosGetFileDescriptor(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @RtlFillMemory(i32, i32, i8 signext) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @GetFileAttributesA(i32) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i32 @StoreNameInSft(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @DosOpenHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
