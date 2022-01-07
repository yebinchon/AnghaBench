; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_xdg_output_handle_name.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_xdg_output_handle_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zxdg_output_v1 = type { i32 }
%struct.swaynag_output = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.swaynag_output*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Checking against output %s for %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Using output %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.zxdg_output_v1*, i8*)* @xdg_output_handle_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdg_output_handle_name(i8* %0, %struct.zxdg_output_v1* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zxdg_output_v1*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.swaynag_output*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.zxdg_output_v1* %1, %struct.zxdg_output_v1** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.swaynag_output*
  store %struct.swaynag_output* %10, %struct.swaynag_output** %7, align 8
  %11 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %12 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* @SWAY_DEBUG, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @sway_log(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  %22 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %23 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.swaynag_output*, %struct.swaynag_output** %25, align 8
  %27 = icmp ne %struct.swaynag_output* %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* @SWAY_DEBUG, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i32, i8*, i8*, ...) @sway_log(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %44 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %45 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store %struct.swaynag_output* %43, %struct.swaynag_output** %47, align 8
  br label %48

48:                                               ; preds = %39, %34, %31, %28, %3
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strdup(i8* %49)
  %51 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %52 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.zxdg_output_v1*, %struct.zxdg_output_v1** %5, align 8
  %54 = call i32 @zxdg_output_v1_destroy(%struct.zxdg_output_v1* %53)
  %55 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %56 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @zxdg_output_v1_destroy(%struct.zxdg_output_v1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
