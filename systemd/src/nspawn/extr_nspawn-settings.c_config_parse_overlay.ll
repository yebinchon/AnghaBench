; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_config_parse_overlay.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_config_parse_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Invalid overlay file system specification %s, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_overlay(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_2__*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %23 = load i8*, i8** %19, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %21, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %16, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %18, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %18, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @overlay_mount_parse(i32* %32, i32* %34, i8* %35, i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %22, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %10
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i8*, i8** %18, align 8
  %47 = call i32 @log_syntax(i8* %41, i32 %42, i8* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %10
  ret i32 0
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @overlay_mount_parse(i32*, i32*, i8*, i32) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
