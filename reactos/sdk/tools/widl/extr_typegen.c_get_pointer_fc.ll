; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_pointer_fc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_pointer_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@ATTR_POINTERTYPE = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @get_pointer_fc(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = call i64 @is_ptr(%struct.TYPE_10__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i64 @is_array(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @ATTR_POINTERTYPE, align 4
  %23 = call i32 @get_attrv(i32* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  br label %65

29:                                               ; preds = %17
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %8, align 8
  br label %31

31:                                               ; preds = %47, %29
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = call i64 @type_is_alias(%struct.TYPE_10__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @ATTR_POINTERTYPE, align 4
  %40 = call i32 @get_attrv(i32* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %4, align 1
  br label %65

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = call %struct.TYPE_10__* @type_alias_get_aliasee(%struct.TYPE_10__* %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %8, align 8
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8, i8* @FC_RP, align 1
  store i8 %54, i8* %4, align 1
  br label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i64 @is_ptr(%struct.TYPE_10__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = call zeroext i8 @type_pointer_get_default_fc(%struct.TYPE_10__* %60)
  store i8 %61, i8* %4, align 1
  br label %65

62:                                               ; preds = %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = call zeroext i8 @type_array_get_ptr_default_fc(%struct.TYPE_10__* %63)
  store i8 %64, i8* %4, align 1
  br label %65

65:                                               ; preds = %62, %59, %53, %43, %26
  %66 = load i8, i8* %4, align 1
  ret i8 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @is_ptr(%struct.TYPE_10__*) #1

declare dso_local i64 @is_array(%struct.TYPE_10__*) #1

declare dso_local i32 @get_attrv(i32*, i32) #1

declare dso_local i64 @type_is_alias(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @type_alias_get_aliasee(%struct.TYPE_10__*) #1

declare dso_local zeroext i8 @type_pointer_get_default_fc(%struct.TYPE_10__*) #1

declare dso_local zeroext i8 @type_array_get_ptr_default_fc(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
