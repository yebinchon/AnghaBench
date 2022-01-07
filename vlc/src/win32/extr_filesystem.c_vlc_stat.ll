; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_filesystem.c_vlc_stat.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_filesystem.c_vlc_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Mismatched struct stat definition.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_stat(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @widen_path(i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  %14 = call i32 @static_assert(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.stat*, %struct.stat** %5, align 8
  %17 = call i32 @_wstati64(i32* %15, %struct.stat* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @free(i32* %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32* @widen_path(i8*) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32 @_wstati64(i32*, %struct.stat*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
