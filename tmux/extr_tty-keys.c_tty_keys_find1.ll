; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_find1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_find1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_key = type { i8, i64, %struct.tty_key*, %struct.tty_key*, %struct.tty_key* }

@KEYC_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_key* (%struct.tty_key*, i8*, i64, i64*)* @tty_keys_find1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_key* @tty_keys_find1(%struct.tty_key* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.tty_key*, align 8
  %6 = alloca %struct.tty_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.tty_key* %0, %struct.tty_key** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store %struct.tty_key* null, %struct.tty_key** %5, align 8
  br label %87

13:                                               ; preds = %4
  %14 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %15 = icmp eq %struct.tty_key* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.tty_key* null, %struct.tty_key** %5, align 8
  br label %87

17:                                               ; preds = %13
  %18 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %19 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %8, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %26
  %37 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %38 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %37, i32 0, i32 4
  %39 = load %struct.tty_key*, %struct.tty_key** %38, align 8
  %40 = icmp eq %struct.tty_key* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %43 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @KEYC_UNKNOWN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %26
  %48 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  store %struct.tty_key* %48, %struct.tty_key** %5, align 8
  br label %87

49:                                               ; preds = %41, %36
  %50 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %51 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %50, i32 0, i32 4
  %52 = load %struct.tty_key*, %struct.tty_key** %51, align 8
  store %struct.tty_key* %52, %struct.tty_key** %6, align 8
  br label %81

53:                                               ; preds = %17
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %58 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %64 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %63, i32 0, i32 3
  %65 = load %struct.tty_key*, %struct.tty_key** %64, align 8
  store %struct.tty_key* %65, %struct.tty_key** %6, align 8
  br label %80

66:                                               ; preds = %53
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %71 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 8
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %77 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %76, i32 0, i32 2
  %78 = load %struct.tty_key*, %struct.tty_key** %77, align 8
  store %struct.tty_key* %78, %struct.tty_key** %6, align 8
  br label %79

79:                                               ; preds = %75, %66
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.tty_key*, %struct.tty_key** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = call %struct.tty_key* @tty_keys_find1(%struct.tty_key* %82, i8* %83, i64 %84, i64* %85)
  store %struct.tty_key* %86, %struct.tty_key** %5, align 8
  br label %87

87:                                               ; preds = %81, %47, %16, %12
  %88 = load %struct.tty_key*, %struct.tty_key** %5, align 8
  ret %struct.tty_key* %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
