; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_check_updates.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_check_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_accum = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: expected %d updates, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s, update %d: expected %d bytes, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s, update %d: unexpected value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.update_accum*, %struct.update_accum*)* @check_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_updates(i32 %0, %struct.update_accum* %1, %struct.update_accum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.update_accum*, align 8
  %6 = alloca %struct.update_accum*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.update_accum* %1, %struct.update_accum** %5, align 8
  store %struct.update_accum* %2, %struct.update_accum** %6, align 8
  %8 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %9 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %12 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %18 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %21 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19, i64 %22)
  %24 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %25 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %28 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %134

31:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %130, %31
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %35 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %38 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @min(i64 %36, i64 %39)
  %41 = icmp ult i64 %33, %40
  br i1 %41, label %42, label %133

42:                                               ; preds = %32
  %43 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %44 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %51 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %49, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %4, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %62 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %69 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 %60, i64 %67, i64 %74)
  %76 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %77 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %42
  %85 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %86 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %93 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %91, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %84
  %101 = load %struct.update_accum*, %struct.update_accum** %5, align 8
  %102 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %109 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.update_accum*, %struct.update_accum** %6, align 8
  %116 = getelementptr inbounds %struct.update_accum, %struct.update_accum* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @memcmp(i32 %107, i32 %114, i64 %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %4, align 4
  %127 = load i64, i64* %7, align 8
  %128 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %100, %84, %42
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %7, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %7, align 8
  br label %32

133:                                              ; preds = %32
  br label %134

134:                                              ; preds = %133, %3
  ret void
}

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
