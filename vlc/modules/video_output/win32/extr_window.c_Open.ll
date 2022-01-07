; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_window.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_window.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i32*, %struct.TYPE_14__, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i64, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"VLC standalone window %p\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"mouse-hide-timeout\00", align 1
@IDC_ARROW = common dso_local global i32 0, align 4
@CS_OWNDC = common dso_local global i32 0, align 4
@CS_DBLCLKS = common dso_local global i32 0, align 4
@WinVoutEventProc = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"RegisterClass FAILED (err=%lu)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@EventThread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@VOUT_WINDOW_TYPE_HWND = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i32 @VLC_OBJECT(%struct.TYPE_16__* %10)
  %12 = call %struct.TYPE_17__* @vlc_obj_calloc(i32 %11, i32 1, i32 72)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %177

20:                                               ; preds = %1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @TEXT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = bitcast %struct.TYPE_17__* %29 to i8*
  %31 = call i32 @_snwprintf(i32 %23, i32 %27, i32 %28, i8* %30)
  %32 = call i32 @GetModuleHandle(i32* null)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %6, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %7, align 8
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = call i64 @GetModuleFileName(i32* null, i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @ExtractIcon(i32 %41, i32* %36, i32 0)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 7
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %20
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = call i32 @var_InheritInteger(%struct.TYPE_16__* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @IDC_ARROW, align 4
  %55 = call i32 @LoadCursor(i32* null, i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @EmptyCursor(i32 %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = bitcast %struct.TYPE_18__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %62, i8 0, i64 48, i1 false)
  %63 = load i32, i32* @CS_OWNDC, align 4
  %64 = load i32, i32* @CS_DBLCLKS, align 4
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i64, i64* @WinVoutEventProc, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = call i32 @RegisterClass(%struct.TYPE_18__* %8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %45
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @DestroyIcon(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 @msg_Err(%struct.TYPE_16__* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %175

100:                                              ; preds = %45
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 4
  %103 = call i32 @vlc_mutex_init(i32* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 5
  %106 = call i32 @vlc_cond_init(i32* %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 6
  %116 = load i32, i32* @EventThread, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %119 = call i64 @vlc_clone(i32* %115, i32 %116, %struct.TYPE_16__* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %100
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = call i32 @Close(%struct.TYPE_16__* %122)
  %124 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %124, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %175

125:                                              ; preds = %100
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  %128 = call i32 @vlc_mutex_lock(i32* %127)
  br label %129

129:                                              ; preds = %135, %125
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  %140 = call i32 @vlc_cond_wait(i32* %137, i32* %139)
  br label %129

141:                                              ; preds = %129
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 4
  %149 = call i32 @vlc_mutex_unlock(i32* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = call i32 @Close(%struct.TYPE_16__* %150)
  %152 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %175

153:                                              ; preds = %141
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 4
  %156 = call i32 @vlc_mutex_unlock(i32* %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 4
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %159, align 8
  %160 = load i32, i32* @VOUT_WINDOW_TYPE_HWND, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i32* %165, i32** %168, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  store i32* @ops, i32** %170, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %174, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %175

175:                                              ; preds = %153, %146, %121, %95
  %176 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %176)
  br label %177

177:                                              ; preds = %175, %18
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_17__* @vlc_obj_calloc(i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_16__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_snwprintf(i32, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @GetModuleFileName(i32*, i32*, i32) #1

declare dso_local i64 @ExtractIcon(i32, i32*, i32) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @LoadCursor(i32*, i32) #1

declare dso_local i32 @EmptyCursor(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @RegisterClass(%struct.TYPE_18__*) #1

declare dso_local i32 @DestroyIcon(i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @Close(%struct.TYPE_16__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
