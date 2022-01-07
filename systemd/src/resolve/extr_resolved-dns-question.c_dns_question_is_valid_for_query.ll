; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-question.c_dns_question_is_valid_for_query.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-question.c_dns_question_is_valid_for_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_question_is_valid_for_query(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %82

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 65535
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %82

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i8* @dns_resource_key_name(%struct.TYPE_6__* %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %82

32:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %78, %32
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @assert(%struct.TYPE_6__* %46)
  %48 = load i64, i64* %5, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i8* @dns_resource_key_name(%struct.TYPE_6__* %56)
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @dns_name_equal(i8* %57, i8* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %82

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %68, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dns_type_is_valid_query(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %82

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8
  br label %33

81:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %76, %62, %31, %21, %15, %9
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i8* @dns_resource_key_name(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @dns_name_equal(i8*, i8*) #1

declare dso_local i32 @dns_type_is_valid_query(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
