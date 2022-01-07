; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_ifaceps_datalen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_ifaceps_datalen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entity_array = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entity_array*, i32*, i32*)* @get_ifaceps_datalen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ifaceps_datalen(%struct.entity_array* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.entity_array*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.entity*, align 8
  store %struct.entity_array* %0, %struct.entity_array** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %61, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.entity_array*, %struct.entity_array** %4, align 8
  %12 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %9
  %16 = load %struct.entity_array*, %struct.entity_array** %4, align 8
  %17 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %16, i32 0, i32 1
  %18 = load %struct.entity*, %struct.entity** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.entity, %struct.entity* %18, i64 %20
  store %struct.entity* %21, %struct.entity** %8, align 8
  %22 = load %struct.entity*, %struct.entity** %8, align 8
  %23 = getelementptr inbounds %struct.entity, %struct.entity* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.entity*, %struct.entity** %8, align 8
  %34 = getelementptr inbounds %struct.entity, %struct.entity* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %27
  %40 = load %struct.entity*, %struct.entity** %8, align 8
  %41 = getelementptr inbounds %struct.entity, %struct.entity* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @strlenW(i64 %44)
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i64 @aligned_string_len(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %53, %50
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  br label %56

56:                                               ; preds = %39, %27
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %56, %15
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %9

64:                                               ; preds = %9
  ret void
}

declare dso_local i64 @aligned_string_len(i32) #1

declare dso_local i32 @strlenW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
