; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_composev.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_composev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgbuf = type { i32 }
%struct.iovec = type { i64, i32 }
%struct.ibuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imsg_composev(%struct.imsgbuf* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.iovec* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.imsgbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iovec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ibuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.imsgbuf* %0, %struct.imsgbuf** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.iovec* %5, %struct.iovec** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %34, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.iovec*, %struct.iovec** %14, align 8
  %25 = load i32, i32* %17, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i64 %26
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %18, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %18, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.imsgbuf*, %struct.imsgbuf** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %18, align 4
  %43 = call %struct.ibuf* @imsg_create(%struct.imsgbuf* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store %struct.ibuf* %43, %struct.ibuf** %16, align 8
  %44 = icmp eq %struct.ibuf* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %79

46:                                               ; preds = %37
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load %struct.ibuf*, %struct.ibuf** %16, align 8
  %53 = load %struct.iovec*, %struct.iovec** %14, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i64 %55
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iovec*, %struct.iovec** %14, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i64 %61
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @imsg_add(%struct.ibuf* %52, i32 %58, i64 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  store i32 -1, i32* %8, align 4
  br label %79

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %47

72:                                               ; preds = %47
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.ibuf*, %struct.ibuf** %16, align 8
  %75 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.imsgbuf*, %struct.imsgbuf** %9, align 8
  %77 = load %struct.ibuf*, %struct.ibuf** %16, align 8
  %78 = call i32 @imsg_close(%struct.imsgbuf* %76, %struct.ibuf* %77)
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %72, %67, %45
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local %struct.ibuf* @imsg_create(%struct.imsgbuf*, i32, i32, i32, i32) #1

declare dso_local i32 @imsg_add(%struct.ibuf*, i32, i64) #1

declare dso_local i32 @imsg_close(%struct.imsgbuf*, %struct.ibuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
