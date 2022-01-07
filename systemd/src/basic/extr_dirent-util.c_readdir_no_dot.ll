; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_dirent-util.c_readdir_no_dot.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_dirent-util.c_readdir_no_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @readdir_no_dot(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dirent*, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.dirent* @readdir(i32* %5)
  store %struct.dirent* %6, %struct.dirent** %3, align 8
  %7 = load %struct.dirent*, %struct.dirent** %3, align 8
  %8 = icmp ne %struct.dirent* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load %struct.dirent*, %struct.dirent** %3, align 8
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @dot_or_dot_dot(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %4

16:                                               ; preds = %9, %4
  %17 = load %struct.dirent*, %struct.dirent** %3, align 8
  ret %struct.dirent* %17
}

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @dot_or_dot_dot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
