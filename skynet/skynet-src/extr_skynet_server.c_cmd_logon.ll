; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_logon.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_logon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_logon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_logon(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.skynet_context*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @tohandle(%struct.skynet_context* %10, i8* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %48

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.skynet_context* @skynet_handle_grab(i64 %17)
  store %struct.skynet_context* %18, %struct.skynet_context** %7, align 8
  %19 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %20 = icmp eq %struct.skynet_context* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %48

22:                                               ; preds = %16
  store i32* null, i32** %8, align 8
  %23 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %24 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32* @skynet_log_open(%struct.skynet_context* %29, i64 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %36 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %35, i32 0, i32 0
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @ATOM_CAS_POINTER(i32** %36, i32* null, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %47 = call i32 @skynet_context_release(%struct.skynet_context* %46)
  store i8* null, i8** %3, align 8
  br label %48

48:                                               ; preds = %45, %21, %15
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

declare dso_local i64 @tohandle(%struct.skynet_context*, i8*) #1

declare dso_local %struct.skynet_context* @skynet_handle_grab(i64) #1

declare dso_local i32* @skynet_log_open(%struct.skynet_context*, i64) #1

declare dso_local i32 @ATOM_CAS_POINTER(i32**, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @skynet_context_release(%struct.skynet_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
