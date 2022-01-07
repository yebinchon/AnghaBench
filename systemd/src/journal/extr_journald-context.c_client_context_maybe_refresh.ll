; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_maybe_refresh.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_maybe_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i32 }
%struct.ucred = type { i64, i64 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@MAX_USEC = common dso_local global i64 0, align 8
@REFRESH_USEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_context_maybe_refresh(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.ucred* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.ucred* %2, %struct.ucred** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = call i32 @assert(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = call i32 @assert(%struct.TYPE_10__* %17)
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* @USEC_INFINITY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %24 = call i64 @now(i32 %23)
  store i64 %24, i64* %14, align 8
  br label %25

25:                                               ; preds = %22, %7
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USEC_INFINITY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %113

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAX_USEC, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %14, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = call i32 @client_context_reset(%struct.TYPE_10__* %46, %struct.TYPE_10__* %47)
  br label %113

49:                                               ; preds = %37, %32
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @REFRESH_USEC, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %14, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %113

58:                                               ; preds = %49
  %59 = load %struct.ucred*, %struct.ucred** %10, align 8
  %60 = icmp ne %struct.ucred* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.ucred*, %struct.ucred** %10, align 8
  %63 = getelementptr inbounds %struct.ucred, %struct.ucred* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @uid_is_valid(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ucred*, %struct.ucred** %10, align 8
  %72 = getelementptr inbounds %struct.ucred, %struct.ucred* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %113

76:                                               ; preds = %67, %61, %58
  %77 = load %struct.ucred*, %struct.ucred** %10, align 8
  %78 = icmp ne %struct.ucred* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load %struct.ucred*, %struct.ucred** %10, align 8
  %81 = getelementptr inbounds %struct.ucred, %struct.ucred* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @gid_is_valid(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ucred*, %struct.ucred** %10, align 8
  %90 = getelementptr inbounds %struct.ucred, %struct.ucred* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %113

94:                                               ; preds = %85, %79, %76
  %95 = load i64, i64* %12, align 8
  %96 = icmp ugt i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i64 @memcmp(i8* %104, i32 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103, %97
  br label %113

112:                                              ; preds = %103, %94
  br label %122

113:                                              ; preds = %111, %93, %75, %57, %45, %31
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = load %struct.ucred*, %struct.ucred** %10, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @client_context_really_refresh(%struct.TYPE_10__* %114, %struct.TYPE_10__* %115, %struct.ucred* %116, i8* %117, i64 %118, i8* %119, i64 %120)
  br label %122

122:                                              ; preds = %113, %112
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @client_context_reset(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @uid_is_valid(i64) #1

declare dso_local i64 @gid_is_valid(i64) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @client_context_really_refresh(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.ucred*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
