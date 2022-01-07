; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_ctl2_encode_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_ctl2_encode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ctl2_encode_name.converted_name = internal global [260 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8**)* @ctl2_encode_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl2_encode_name(%struct.TYPE_5__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @memcpy(i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 4), i8* %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lhash_val_of_name_sys(i32 %23, i32 %27, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 4))
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 1), align 1
  %32 = load i32, i32* %9, align 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 2), align 2
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 8
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 3), align 1
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 4, %37
  %39 = and i32 %38, 3
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %50, %3
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 %48
  store i8 87, i8* %49, align 1
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_name.converted_name, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 7
  %57 = and i32 %56, -4
  ret i32 %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lhash_val_of_name_sys(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
