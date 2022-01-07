; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_LoadLongDouble.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_LoadLongDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @RM_LoadLongDouble(%struct.TYPE_4__* %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca x86_fp80, align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i8* @RM_LoadStringBuffer(%struct.TYPE_4__* %13, i64* %5)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %25

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @string2ld(i8* %19, i64 %20, x86_fp80* %4)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @RM_Free(i8* %22)
  %24 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %24, x86_fp80* %2, align 16
  br label %25

25:                                               ; preds = %18, %17, %11
  %26 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %26
}

declare dso_local i8* @RM_LoadStringBuffer(%struct.TYPE_4__*, i64*) #1

declare dso_local i32 @string2ld(i8*, i64, x86_fp80*) #1

declare dso_local i32 @RM_Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
