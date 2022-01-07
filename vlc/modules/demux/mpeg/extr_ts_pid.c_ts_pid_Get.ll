; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_pid.c_ts_pid_Get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_pid.c_ts_pid_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_12__**, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.searchkey = type { i32, %struct.TYPE_12__** }

@ts_bsearch_searchkey_Compare = common dso_local global i32 0, align 4
@PID_ALLOC_CHUNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ts_pid_Get(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.searchkey, align 8
  %9 = alloca %struct.TYPE_12__**, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %21 [
    i32 0, label %12
    i32 8187, label %15
    i32 8191, label %18
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 7
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  br label %171

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 6
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  br label %171

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %3, align 8
  br label %171

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %3, align 8
  br label %171

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %34, align 8
  %36 = icmp ne %struct.TYPE_12__** %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.searchkey, %struct.searchkey* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.searchkey, %struct.searchkey* %8, i32 0, i32 1
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ts_bsearch_searchkey_Compare, align 4
  %48 = call %struct.TYPE_12__** @bsearch(%struct.searchkey* %8, %struct.TYPE_12__** %43, i64 %46, i32 8, i32 %47)
  store %struct.TYPE_12__** %48, %struct.TYPE_12__*** %9, align 8
  %49 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %50 = icmp ne %struct.TYPE_12__** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %7, align 8
  br label %64

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.searchkey, %struct.searchkey* %8, i32 0, i32 1
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %58, align 8
  %60 = ptrtoint %struct.TYPE_12__** %56 to i64
  %61 = ptrtoint %struct.TYPE_12__** %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %54, %51
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = icmp eq %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %163

68:                                               ; preds = %65
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %68
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @PID_ALLOC_CHUNK, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call %struct.TYPE_12__** @realloc(%struct.TYPE_12__** %79, i32 %87)
  store %struct.TYPE_12__** %88, %struct.TYPE_12__*** %10, align 8
  %89 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %90 = icmp ne %struct.TYPE_12__** %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %76
  %92 = call i32 (...) @abort() #3
  unreachable

93:                                               ; preds = %76
  %94 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 4
  store %struct.TYPE_12__** %94, %struct.TYPE_12__*** %96, align 8
  %97 = load i32, i32* @PID_ALLOC_CHUNK, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %93, %68
  %104 = call %struct.TYPE_12__* @calloc(i32 1, i32 8)
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %7, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 (...) @abort() #3
  unreachable

109:                                              ; preds = %103
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 255, i32* %111, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %152

119:                                              ; preds = %109
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %122, i64 %123
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %130, %119
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, 1
  %139 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %136, i64 %138
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %142, i64 %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = sub i64 %147, %148
  %150 = mul i64 %149, 8
  %151 = call i32 @memmove(%struct.TYPE_12__** %139, %struct.TYPE_12__** %144, i64 %150)
  br label %152

152:                                              ; preds = %133, %109
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %156, i64 %157
  store %struct.TYPE_12__* %153, %struct.TYPE_12__** %158, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %160, align 8
  br label %163

163:                                              ; preds = %152, %65
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %166, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %3, align 8
  br label %171

171:                                              ; preds = %163, %27, %18, %15, %12
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %172
}

declare dso_local %struct.TYPE_12__** @bsearch(%struct.searchkey*, %struct.TYPE_12__**, i64, i32, i32) #1

declare dso_local %struct.TYPE_12__** @realloc(%struct.TYPE_12__**, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_12__**, %struct.TYPE_12__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
