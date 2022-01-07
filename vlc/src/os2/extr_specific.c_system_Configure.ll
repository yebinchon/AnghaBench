; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_specific.c_system_Configure.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_specific.c_system_Configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"high-priority\00", align 1
@PRTYS_PROCESS = common dso_local global i32 0, align 4
@PRTYC_REGULAR = common dso_local global i32 0, align 4
@PRTYD_MAXIMUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"raised process priority\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"could not raise process priority\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"one-instance\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"one-instance-when-started-from-file\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"started-from-file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"one instance mode ENABLED\00", align 1
@VLC_IPC_PIPE = common dso_local global i32 0, align 4
@OPEN_ACTION_OPEN_IF_EXISTS = common dso_local global i32 0, align 4
@OPEN_ACCESS_READWRITE = common dso_local global i32 0, align 4
@OPEN_SHARE_DENYREADWRITE = common dso_local global i32 0, align 4
@OPEN_FLAGS_FAIL_ON_ERROR = common dso_local global i32 0, align 4
@ERROR_PIPE_BUSY = common dso_local global i64 0, align 8
@hpipeIPC = common dso_local global i32 0, align 4
@NP_ACCESS_DUPLEX = common dso_local global i32 0, align 4
@NP_WAIT = common dso_local global i32 0, align 4
@NP_TYPE_MESSAGE = common dso_local global i32 0, align 4
@NP_READMODE_MESSAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"one instance mode DISABLED (a named pipe couldn't be created)\00", align 1
@tidIPCFirst = common dso_local global i32 0, align 4
@IPCHelperThread = common dso_local global i32 0, align 4
@tidIPCHelper = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [67 x i8] c"one instance mode DISABLED (IPC helper thread couldn't be created)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"playlist-enqueue\00", align 1
@IPC_CMD_ENQUEUE = common dso_local global i64 0, align 8
@IPC_CMD_GO = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"://\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @system_Configure(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @var_InheritBool(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* @PRTYS_PROCESS, align 4
  %20 = load i32, i32* @PRTYC_REGULAR, align 4
  %21 = load i32, i32* @PRTYD_MAXIMUM, align 4
  %22 = call i32 @DosSetPriority(i32 %19, i32 %20, i32 %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @msg_Dbg(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %30

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @msg_Dbg(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @var_InheritBool(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @var_InheritBool(i32* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %172

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @var_InheritBool(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %172

43:                                               ; preds = %39, %31
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @msg_Info(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %62, %43
  %47 = load i32, i32* @VLC_IPC_PIPE, align 4
  %48 = load i32, i32* @OPEN_ACTION_OPEN_IF_EXISTS, align 4
  %49 = load i32, i32* @OPEN_ACCESS_READWRITE, align 4
  %50 = load i32, i32* @OPEN_SHARE_DENYREADWRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @OPEN_FLAGS_FAIL_ON_ERROR, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @DosOpen(i32 %47, i32* %7, i64* %8, i32 0, i32 0, i32 %48, i32 %53, i32* null)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @ERROR_PIPE_BUSY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @VLC_IPC_PIPE, align 4
  %60 = call i32 @DosWaitNPipe(i32 %59, i32 -1)
  br label %62

61:                                               ; preds = %46
  br label %63

62:                                               ; preds = %58
  br label %46

63:                                               ; preds = %61
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load i32, i32* @VLC_IPC_PIPE, align 4
  %68 = load i32, i32* @NP_ACCESS_DUPLEX, align 4
  %69 = load i32, i32* @NP_WAIT, align 4
  %70 = load i32, i32* @NP_TYPE_MESSAGE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NP_READMODE_MESSAGE, align 4
  %73 = or i32 %71, %72
  %74 = or i32 %73, 1
  %75 = call i64 @DosCreateNPipe(i32 %67, i32* @hpipeIPC, i32 %68, i32 %74, i32 32768, i32 32768, i32 0)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @msg_Err(i32* %79, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %172

81:                                               ; preds = %66
  %82 = call i32 (...) @_gettid()
  store i32 %82, i32* @tidIPCFirst, align 4
  %83 = load i32, i32* @IPCHelperThread, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @_beginthread(i32 %83, i32* null, i32 1048576, i32* %84)
  store i32 %85, i32* @tidIPCHelper, align 4
  %86 = load i32, i32* @tidIPCHelper, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @msg_Err(i32* %89, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* @tidIPCFirst, align 4
  br label %91

91:                                               ; preds = %88, %81
  br label %171

92:                                               ; preds = %63
  %93 = load i32*, i32** %4, align 8
  %94 = call i64 @var_InheritBool(i32* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @IPC_CMD_ENQUEUE, align 8
  br label %100

98:                                               ; preds = %92
  %99 = load i64, i64* @IPC_CMD_GO, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* %10, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i32, ...) @DosWrite(i32 %102, i64* %10, i64 8, i64* %11)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, ...) @DosWrite(i32 %104, i32* %5, i64 4, i64* %11)
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %163, %100
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %166

110:                                              ; preds = %106
  %111 = load i8**, i8*** %6, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strstr(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load i8**, i8*** %6, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strdup(i8* %123)
  store i8* %124, i8** %13, align 8
  br label %132

125:                                              ; preds = %110
  %126 = load i8**, i8*** %6, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @vlc_path2uri(i8* %130, i32* null)
  store i8* %131, i8** %13, align 8
  br label %132

132:                                              ; preds = %125, %118
  %133 = load i8*, i8** %13, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load i8**, i8*** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %13, align 8
  br label %141

141:                                              ; preds = %135, %132
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %14, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, ...) @DosWrite(i32 %146, i64* %14, i64 8, i64* %11)
  %148 = load i32, i32* %7, align 4
  %149 = load i8*, i8** %13, align 8
  %150 = load i64, i64* %14, align 8
  %151 = call i32 (i32, ...) @DosWrite(i32 %148, i8* %149, i64 %150, i64* %11)
  %152 = load i8*, i8** %13, align 8
  %153 = load i8**, i8*** %6, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %152, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %141
  %160 = load i8*, i8** %13, align 8
  %161 = call i32 @free(i8* %160)
  br label %162

162:                                              ; preds = %159, %141
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %106

166:                                              ; preds = %106
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @DosClose(i32 %167)
  %169 = call i32 (...) @system_End()
  %170 = call i32 @exit(i32 0) #3
  unreachable

171:                                              ; preds = %91
  br label %172

172:                                              ; preds = %78, %171, %39, %35
  ret void
}

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @DosSetPriority(i32, i32, i32, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @msg_Info(i32*, i8*) #1

declare dso_local i64 @DosOpen(i32, i32*, i64*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DosWaitNPipe(i32, i32) #1

declare dso_local i64 @DosCreateNPipe(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @_gettid(...) #1

declare dso_local i32 @_beginthread(i32, i32*, i32, i32*) #1

declare dso_local i32 @DosWrite(i32, ...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @DosClose(i32) #1

declare dso_local i32 @system_End(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
