; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_add1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_add1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_key = type { i8, %struct.tty_key*, %struct.tty_key*, %struct.tty_key*, i32 }

@KEYC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_key**, i8*, i32)* @tty_keys_add1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_keys_add1(%struct.tty_key** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_key**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_key*, align 8
  store %struct.tty_key** %0, %struct.tty_key*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tty_key**, %struct.tty_key*** %4, align 8
  %9 = load %struct.tty_key*, %struct.tty_key** %8, align 8
  store %struct.tty_key* %9, %struct.tty_key** %7, align 8
  %10 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %11 = icmp eq %struct.tty_key* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = call %struct.tty_key* @xcalloc(i32 1, i32 40)
  %14 = load %struct.tty_key**, %struct.tty_key*** %4, align 8
  store %struct.tty_key* %13, %struct.tty_key** %14, align 8
  store %struct.tty_key* %13, %struct.tty_key** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %18 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %17, i32 0, i32 0
  store i8 %16, i8* %18, align 8
  %19 = load i32, i32* @KEYC_UNKNOWN, align 4
  %20 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %21 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %12, %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %27 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %41 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  br label %75

42:                                               ; preds = %31
  %43 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %44 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %43, i32 0, i32 3
  store %struct.tty_key** %44, %struct.tty_key*** %4, align 8
  br label %71

45:                                               ; preds = %22
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %50 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %56 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %55, i32 0, i32 2
  store %struct.tty_key** %56, %struct.tty_key*** %4, align 8
  br label %70

57:                                               ; preds = %45
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %62 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %68 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %67, i32 0, i32 1
  store %struct.tty_key** %68, %struct.tty_key*** %4, align 8
  br label %69

69:                                               ; preds = %66, %57
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.tty_key**, %struct.tty_key*** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  call void @tty_keys_add1(%struct.tty_key** %72, i8* %73, i32 %74)
  br label %75

75:                                               ; preds = %71, %38
  ret void
}

declare dso_local %struct.tty_key* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
