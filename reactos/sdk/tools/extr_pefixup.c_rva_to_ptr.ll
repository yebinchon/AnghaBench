; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/extr_pefixup.c_rva_to_ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/extr_pefixup.c_rva_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@nt_header = common dso_local global %struct.TYPE_10__* null, align 8
@buffer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rva_to_ptr(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @nt_header, align 8
  %7 = call %struct.TYPE_9__* @IMAGE_FIRST_SECTION(%struct.TYPE_10__* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  br label %8

8:                                                ; preds = %53, %1
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @nt_header, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @dtohl(i32 %14)
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %8
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dtohl(i32 %21)
  %23 = icmp sge i64 %18, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @dtohl(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dtohl(i32 %33)
  %35 = add nsw i64 %29, %34
  %36 = icmp slt i64 %25, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %24
  %38 = load i64, i64* @buffer, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @dtohl(i32 %43)
  %45 = sub nsw i64 %40, %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @dtohl(i32 %48)
  %50 = add nsw i64 %45, %49
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %2, align 8
  br label %59

52:                                               ; preds = %24, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 1
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %4, align 8
  br label %8

58:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local %struct.TYPE_9__* @IMAGE_FIRST_SECTION(%struct.TYPE_10__*) #1

declare dso_local i64 @dtohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
