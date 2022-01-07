; ModuleID = '/home/carl/AnghaBench/systemd/src/gpt-auto-generator/extr_gpt-auto-generator.c_add_xbootldr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/gpt-auto-generator/extr_gpt-auto-generator.c_add_xbootldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"In initrd, ignoring the XBOOTLDR partition.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/boot\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to parse fstab: %m\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"/boot specified in fstab, ignoring XBOOTLDR partition.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"umask=0077\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Boot Loader Partition\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @add_xbootldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_xbootldr(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_4__* %5)
  %7 = call i64 (...) @in_initrd()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @log_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = call i32 @fstab_is_mount_point(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @log_error_errno(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @log_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %43

23:                                               ; preds = %18
  %24 = call i32 @path_is_busy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %43

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @USEC_PER_SEC, align 4
  %41 = mul nsw i32 120, %40
  %42 = call i32 @add_automount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %33, %32, %27, %21, %15, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @in_initrd(...) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @fstab_is_mount_point(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @path_is_busy(i8*) #1

declare dso_local i32 @add_automount(i8*, i32, i8*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
