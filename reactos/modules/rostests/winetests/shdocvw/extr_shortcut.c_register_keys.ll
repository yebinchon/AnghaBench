; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shortcut.c_register_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shortcut.c_register_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_key = type { i32, i32, %struct.registry_key*, %struct.registry_value*, i32 }
%struct.registry_value = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.registry_key*, i32)* @register_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_keys(i32 %0, %struct.registry_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.registry_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.registry_value*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.registry_key* %1, %struct.registry_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %94, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.registry_key*, %struct.registry_key** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %19, i64 %21
  %23 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @KEY_WRITE, align 4
  %26 = call i64 @RegCreateKeyExA(i32 %18, i32 %24, i32 0, i32* null, i32 0, i32 %25, i32* null, i32* %8, i32* null)
  %27 = icmp eq i64 %17, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.registry_key*, %struct.registry_key** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %31, i64 %33
  %35 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %30, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %29
  %39 = load %struct.registry_key*, %struct.registry_key** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %39, i64 %41
  %43 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %42, i32 0, i32 3
  %44 = load %struct.registry_value*, %struct.registry_value** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.registry_value, %struct.registry_value* %44, i64 %46
  store %struct.registry_value* %47, %struct.registry_value** %11, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.registry_value*, %struct.registry_value** %11, align 8
  %51 = getelementptr inbounds %struct.registry_value, %struct.registry_value* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.registry_value*, %struct.registry_value** %11, align 8
  %54 = getelementptr inbounds %struct.registry_value, %struct.registry_value* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.registry_value*, %struct.registry_value** %11, align 8
  %57 = call i32 @REG_VALUE_ADDR(%struct.registry_value* %56)
  %58 = load %struct.registry_value*, %struct.registry_value** %11, align 8
  %59 = call i32 @REG_VALUE_SIZE(%struct.registry_value* %58)
  %60 = call i64 @RegSetValueExA(i32 %49, i32 %52, i32 0, i32 %55, i32 %57, i32 %59)
  %61 = icmp ne i64 %48, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @RegCloseKey(i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %99

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.registry_key*, %struct.registry_key** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %72, i64 %74
  %76 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %75, i32 0, i32 2
  %77 = load %struct.registry_key*, %struct.registry_key** %76, align 8
  %78 = load %struct.registry_key*, %struct.registry_key** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %78, i64 %80
  %82 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @register_keys(i32 %71, %struct.registry_key* %77, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @RegCloseKey(i32 %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %99

90:                                               ; preds = %70
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  br label %93

93:                                               ; preds = %90, %16
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %12

97:                                               ; preds = %12
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %86, %62
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @RegCreateKeyExA(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @RegSetValueExA(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_VALUE_ADDR(%struct.registry_value*) #1

declare dso_local i32 @REG_VALUE_SIZE(%struct.registry_value*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
