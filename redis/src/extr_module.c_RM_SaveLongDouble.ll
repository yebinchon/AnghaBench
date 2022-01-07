; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_SaveLongDouble.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_SaveLongDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MAX_LONG_DOUBLE_CHARS = common dso_local global i32 0, align 4
@LD_STR_HEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RM_SaveLongDouble(%struct.TYPE_4__* %0, x86_fp80 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca x86_fp80, align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store x86_fp80 %1, x86_fp80* %4, align 16
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = trunc i64 %15 to i32
  %19 = load x86_fp80, x86_fp80* %4, align 16
  %20 = load i32, i32* @LD_STR_HEX, align 4
  %21 = call i64 @ld2string(i8* %17, i32 %18, x86_fp80 %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 1
  %25 = call i32 @RM_SaveStringBuffer(%struct.TYPE_4__* %22, i8* %17, i64 %24)
  %26 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %26)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ld2string(i8*, i32, x86_fp80, i32) #2

declare dso_local i32 @RM_SaveStringBuffer(%struct.TYPE_4__*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
