; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_start.c_skynet_start.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_start.c_skynet_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_config = type { i8*, i64, i32, i32, i32, i32, i32, i32 }
%struct.sigaction = type { i32, i32, i32* }
%struct.skynet_context = type { i32 }

@handle_hup = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't launch %s service\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"logger\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_start(%struct.skynet_config* %0) #0 {
  %2 = alloca %struct.skynet_config*, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.skynet_context*, align 8
  store %struct.skynet_config* %0, %struct.skynet_config** %2, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32* @handle_hup, i32** %5, align 8
  %6 = load i32, i32* @SA_RESTART, align 4
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %9 = call i32 @sigfillset(i32* %8)
  %10 = load i32, i32* @SIGHUP, align 4
  %11 = call i32 @sigaction(i32 %10, %struct.sigaction* %3, i32* null)
  %12 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %13 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %18 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @daemon_init(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %27 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skynet_harbor_init(i32 %28)
  %30 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %31 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skynet_handle_init(i32 %32)
  %34 = call i32 (...) @skynet_mq_init()
  %35 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %36 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @skynet_module_init(i32 %37)
  %39 = call i32 (...) @skynet_timer_init()
  %40 = call i32 (...) @skynet_socket_init()
  %41 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %42 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @skynet_profile_enable(i32 %43)
  %45 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %46 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %49 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.skynet_context* @skynet_context_new(i8* %47, i32 %50)
  store %struct.skynet_context* %51, %struct.skynet_context** %4, align 8
  %52 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %53 = icmp eq %struct.skynet_context* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %25
  %55 = load i32, i32* @stderr, align 4
  %56 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %57 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %25
  %62 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %63 = call i32 @skynet_context_handle(%struct.skynet_context* %62)
  %64 = call i32 @skynet_handle_namehandle(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %66 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %67 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bootstrap(%struct.skynet_context* %65, i32 %68)
  %70 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %71 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @start(i32 %72)
  %74 = call i32 (...) @skynet_harbor_exit()
  %75 = call i32 (...) @skynet_socket_free()
  %76 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %77 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %61
  %81 = load %struct.skynet_config*, %struct.skynet_config** %2, align 8
  %82 = getelementptr inbounds %struct.skynet_config, %struct.skynet_config* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @daemon_exit(i64 %83)
  br label %85

85:                                               ; preds = %80, %61
  ret void
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @daemon_init(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @skynet_harbor_init(i32) #1

declare dso_local i32 @skynet_handle_init(i32) #1

declare dso_local i32 @skynet_mq_init(...) #1

declare dso_local i32 @skynet_module_init(i32) #1

declare dso_local i32 @skynet_timer_init(...) #1

declare dso_local i32 @skynet_socket_init(...) #1

declare dso_local i32 @skynet_profile_enable(i32) #1

declare dso_local %struct.skynet_context* @skynet_context_new(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @skynet_handle_namehandle(i32, i8*) #1

declare dso_local i32 @skynet_context_handle(%struct.skynet_context*) #1

declare dso_local i32 @bootstrap(%struct.skynet_context*, i32) #1

declare dso_local i32 @start(i32) #1

declare dso_local i32 @skynet_harbor_exit(...) #1

declare dso_local i32 @skynet_socket_free(...) #1

declare dso_local i32 @daemon_exit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
