; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Couldn't connect to Nano-X server\0A\00", align 1
@g_screen_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_bpp = common dso_local global i32 0, align 4
@g_Bpp = common dso_local global i32 0, align 4
@g_width = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@g_clip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_server_bpp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"unsupported bpp, server = %d, client = %d\0A\00", align 1
@g_servername = common dso_local global i32 0, align 4
@g_flags = common dso_local global i32 0, align 4
@g_domain = common dso_local global i32 0, align 4
@g_password = common dso_local global i32 0, align 4
@g_shell = common dso_local global i32 0, align 4
@g_directory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Error connecting\0A\00", align 1
@GR_ROOT_WINDOW_ID = common dso_local global i32 0, align 4
@g_wnd = common dso_local global i32 0, align 4
@g_gc = common dso_local global i32 0, align 4
@g_gc_clean = common dso_local global i32 0, align 4
@g_null_cursor = common dso_local global i64 0, align 8
@g_sck = common dso_local global i32 0, align 4
@nanox_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @get_username_and_hostname()
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @parse_parameters(i32 %7, i8** %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @exit(i32 0) #3
  unreachable

13:                                               ; preds = %2
  %14 = call i64 (...) @GrOpen()
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %13
  %21 = call i32 @GrGetScreenInfo(%struct.TYPE_4__* @g_screen_info)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_screen_info, i32 0, i32 0), align 4
  store i32 %22, i32* @g_bpp, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_screen_info, i32 0, i32 0), align 4
  %24 = add nsw i32 %23, 7
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* @g_Bpp, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_screen_info, i32 0, i32 2), align 4
  store i32 %26, i32* @g_width, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_screen_info, i32 0, i32 1), align 4
  store i32 %27, i32* @g_height, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_clip, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_clip, i32 0, i32 2), align 8
  %28 = load i32, i32* @g_width, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_clip, i32 0, i32 1), align 4
  %29 = load i32, i32* @g_height, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_clip, i32 0, i32 0), align 8
  %30 = load i32, i32* @g_bpp, align 4
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @g_server_bpp, align 4
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %48, label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* @g_bpp, align 4
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @g_server_bpp, align 4
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %48, label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* @g_server_bpp, align 4
  %44 = load i32, i32* @g_bpp, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = call i32 (...) @GrClose()
  %47 = call i32 @exit(i32 0) #3
  unreachable

48:                                               ; preds = %38, %32
  %49 = call i32 (...) @init_keys()
  %50 = load i32, i32* @g_servername, align 4
  %51 = load i32, i32* @g_flags, align 4
  %52 = load i32, i32* @g_domain, align 4
  %53 = load i32, i32* @g_password, align 4
  %54 = load i32, i32* @g_shell, align 4
  %55 = load i32, i32* @g_directory, align 4
  %56 = call i32 @rdp_connect(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 (...) @GrClose()
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %48
  %64 = load i32, i32* @GR_ROOT_WINDOW_ID, align 4
  %65 = load i32, i32* @g_width, align 4
  %66 = load i32, i32* @g_height, align 4
  %67 = call i32 @GrNewWindow(i32 %64, i32 0, i32 0, i32 %65, i32 %66, i32 0, i32 0, i32 0)
  store i32 %67, i32* @g_wnd, align 4
  %68 = load i32, i32* @g_wnd, align 4
  %69 = call i32 @GrMapWindow(i32 %68)
  %70 = call i32 (...) @GrNewGC()
  store i32 %70, i32* @g_gc, align 4
  %71 = call i32 (...) @GrNewGC()
  store i32 %71, i32* @g_gc_clean, align 4
  %72 = load i32, i32* @g_gc, align 4
  %73 = call i32 @GrSetGCForeground(i32 %72, i32 0)
  %74 = load i32, i32* @g_wnd, align 4
  %75 = load i32, i32* @g_gc, align 4
  %76 = load i32, i32* @g_width, align 4
  %77 = load i32, i32* @g_height, align 4
  %78 = call i32 @GrFillRect(i32 %74, i32 %75, i32 0, i32 0, i32 %76, i32 %77)
  %79 = call i64 @ui_create_cursor(i32 0, i32 0, i32 32, i32 32, i32 0, i32 0)
  store i64 %79, i64* @g_null_cursor, align 8
  %80 = load i32, i32* @g_wnd, align 4
  %81 = call i32 @GrSelectEvents(i32 %80, i32 -1)
  %82 = load i32, i32* @g_sck, align 4
  %83 = call i32 @GrRegisterInput(i32 %82)
  %84 = load i32, i32* @nanox_event, align 4
  %85 = call i32 @GrMainLoop(i32 %84)
  %86 = load i64, i64* @g_null_cursor, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @ui_destroy_cursor(i8* %87)
  %89 = load i32, i32* @g_gc, align 4
  %90 = call i32 @GrDestroyGC(i32 %89)
  %91 = load i32, i32* @g_gc_clean, align 4
  %92 = call i32 @GrDestroyGC(i32 %91)
  %93 = load i32, i32* @g_wnd, align 4
  %94 = call i32 @GrDestroyWindow(i32 %93)
  %95 = call i32 (...) @GrClose()
  ret i32 0
}

declare dso_local i32 @get_username_and_hostname(...) #1

declare dso_local i32 @parse_parameters(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @GrOpen(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @GrGetScreenInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @GrClose(...) #1

declare dso_local i32 @init_keys(...) #1

declare dso_local i32 @rdp_connect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GrNewWindow(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GrMapWindow(i32) #1

declare dso_local i32 @GrNewGC(...) #1

declare dso_local i32 @GrSetGCForeground(i32, i32) #1

declare dso_local i32 @GrFillRect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ui_create_cursor(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GrSelectEvents(i32, i32) #1

declare dso_local i32 @GrRegisterInput(i32) #1

declare dso_local i32 @GrMainLoop(i32) #1

declare dso_local i32 @ui_destroy_cursor(i8*) #1

declare dso_local i32 @GrDestroyGC(i32) #1

declare dso_local i32 @GrDestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
