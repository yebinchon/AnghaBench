; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_done.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i64, i32, i32, i64, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_done(%struct.io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.io*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.io* %0, %struct.io** %3, align 8
  %7 = load %struct.io*, %struct.io** %3, align 8
  %8 = getelementptr inbounds %struct.io, %struct.io* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.io*, %struct.io** %3, align 8
  %11 = getelementptr inbounds %struct.io, %struct.io* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.io*, %struct.io** %3, align 8
  %16 = getelementptr inbounds %struct.io, %struct.io* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @close(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.io*, %struct.io** %3, align 8
  %21 = getelementptr inbounds %struct.io, %struct.io* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @free(i32 %22)
  %24 = load %struct.io*, %struct.io** %3, align 8
  %25 = call i32 @io_init(%struct.io* %24)
  br label %26

26:                                               ; preds = %38, %19
  %27 = load i64, i64* %4, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @waitpid(i64 %30, i32* %5, i32 0)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %26

39:                                               ; preds = %34
  %40 = load i64, i64* @errno, align 8
  %41 = load %struct.io*, %struct.io** %3, align 8
  %42 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  store i32 0, i32* %2, align 4
  br label %72

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @WIFEXITED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @WEXITSTATUS(i32 %48)
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  %53 = load %struct.io*, %struct.io** %3, align 8
  %54 = getelementptr inbounds %struct.io, %struct.io* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @WIFSIGNALED(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.io*, %struct.io** %3, align 8
  %64 = getelementptr inbounds %struct.io, %struct.io* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %58, %51
  %69 = phi i1 [ false, %58 ], [ false, %51 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %68, %39
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @io_init(%struct.io*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
