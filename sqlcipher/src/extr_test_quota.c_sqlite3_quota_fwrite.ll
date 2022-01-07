; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_fwrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_sqlite3_quota_fwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 (i32, i64*, i64, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sqlite3_quota_fwrite(i8* %0, i64 %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ftell(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 %22, %23
  %25 = add i64 %21, %24
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %131

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %131

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %14, align 8
  %41 = call i32 (...) @quotaEnter()
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %37
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %123

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32 (i32, i64*, i64, i32)*, i32 (i32, i64*, i64, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i64*, i64, i32)* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32 (i32, i64*, i64, i32)*, i32 (i32, i64*, i64, i32)** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %69(i32 %72, i64* %74, i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %66, %61
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %9, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load i64, i64* %6, align 8
  %107 = udiv i64 %105, %106
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = mul i64 %109, %110
  %112 = add i64 %108, %111
  store i64 %112, i64* %10, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = load i64, i64* %10, align 8
  %121 = add nsw i64 %119, %120
  store i64 %121, i64* %11, align 8
  br label %122

122:                                              ; preds = %91, %86, %80
  br label %123

123:                                              ; preds = %122, %56, %37
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = call i32 (...) @quotaLeave()
  br label %132

131:                                              ; preds = %31, %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @fwrite(i8* %133, i64 %134, i64 %135, i32 %138)
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %175

143:                                              ; preds = %132
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = icmp ne %struct.TYPE_7__* %144, null
  br i1 %145, label %146, label %175

146:                                              ; preds = %143
  %147 = load i64, i64* %13, align 8
  store i64 %147, i64* %15, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* %15, align 8
  %151 = mul i64 %149, %150
  %152 = add i64 %148, %151
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i64, i64* %10, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i64, i64* %10, align 8
  store i64 %157, i64* %16, align 8
  br label %158

158:                                              ; preds = %156, %146
  %159 = call i32 (...) @quotaEnter()
  %160 = load i64, i64* %16, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %160, %163
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %164
  store i64 %170, i64* %168, align 8
  %171 = load i64, i64* %16, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = call i32 (...) @quotaLeave()
  br label %175

175:                                              ; preds = %158, %143, %132
  %176 = load i64, i64* %13, align 8
  ret i64 %176
}

declare dso_local i64 @ftell(i32) #1

declare dso_local i32 @quotaEnter(...) #1

declare dso_local i32 @quotaLeave(...) #1

declare dso_local i64 @fwrite(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
