; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtergraph.c_test_state_change.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtergraph.c_test_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IMediaControl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"QueryInterface(IMediaControl) failed: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GetState() failed: %x\0A\00", align 1
@State_Stopped = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong state %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Run() failed: %x\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@State_Running = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Stop() failed: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Pause() failed: %x\0A\00", align 1
@State_Paused = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_state_change(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @IFilterGraph2_QueryInterface(i32* %6, i32* @IID_IMediaControl, i8** %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @IMediaControl_GetState(i32* %15, i32 1000, i64* %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @State_Stopped, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @IMediaControl_Run(i32* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @SUCCEEDED(i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @INFINITE, align 4
  %37 = call i64 @IMediaControl_GetState(i32* %35, i32 %36, i64* %4)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @SUCCEEDED(i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @State_Running, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @IMediaControl_Stop(i32* %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @SUCCEEDED(i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i64 @IMediaControl_GetState(i32* %54, i32 1000, i64* %4)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @State_Stopped, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @IMediaControl_Pause(i32* %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @SUCCEEDED(i64 %70)
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @IMediaControl_GetState(i32* %74, i32 1000, i64* %4)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @State_Paused, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i64 @IMediaControl_Run(i32* %88)
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @SUCCEEDED(i64 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i64 @IMediaControl_GetState(i32* %94, i32 1000, i64* %4)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @S_OK, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @State_Running, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @IMediaControl_Pause(i32* %108)
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @SUCCEEDED(i64 %110)
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i64 @IMediaControl_GetState(i32* %114, i32 1000, i64* %4)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @State_Paused, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @IMediaControl_Stop(i32* %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @SUCCEEDED(i64 %130)
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i64 @IMediaControl_GetState(i32* %134, i32 1000, i64* %4)
  store i64 %135, i64* %5, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @S_OK, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* @State_Stopped, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %146)
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @IMediaControl_Release(i32* %148)
  ret void
}

declare dso_local i64 @IFilterGraph2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IMediaControl_GetState(i32*, i32, i64*) #1

declare dso_local i64 @IMediaControl_Run(i32*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @IMediaControl_Stop(i32*) #1

declare dso_local i64 @IMediaControl_Pause(i32*) #1

declare dso_local i32 @IMediaControl_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
