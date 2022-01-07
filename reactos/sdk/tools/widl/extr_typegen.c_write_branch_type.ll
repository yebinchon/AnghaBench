; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_branch_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_branch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"NdrFcShort(0x0),\09/* No type */\0A\00", align 1
@TYPE_BASIC = common dso_local global i64 0, align 8
@TYPE_ENUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"NdrFcShort(0x80%02x),\09/* Simple arm type: %s */\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"NdrFcShort(0x%hx),\09/* Offset= %d (%d) */\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"write_branch_type: type unimplemented %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32*)* @write_branch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_branch_type(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %12, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %70

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i64 @type_get_type(%struct.TYPE_6__* %15)
  %17 = load i64, i64* @TYPE_BASIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i64 @type_get_type(%struct.TYPE_6__* %20)
  %22 = load i64, i64* @TYPE_ENUM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19, %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = call i64 @type_get_type(%struct.TYPE_6__* %25)
  %27 = load i64, i64* @TYPE_BASIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = call zeroext i8 @get_basic_fc(%struct.TYPE_6__* %30)
  store i8 %31, i8* %7, align 1
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call zeroext i8 @get_enum_fc(%struct.TYPE_6__* %33)
  store i8 %34, i8* %7, align 1
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32*, i32** %4, align 8
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = call i32 @string_of_type(i8 zeroext %39)
  %41 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %36, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  br label %69

42:                                               ; preds = %19
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %50, %52
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %8, align 2
  %55 = load i32*, i32** %4, align 8
  %56 = load i16, i16* %8, align 2
  %57 = sext i16 %56 to i32
  %58 = load i16, i16* %8, align 2
  %59 = sext i16 %58 to i32
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %55, i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59, i32 %62)
  br label %68

64:                                               ; preds = %42
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = call i64 @type_get_type(%struct.TYPE_6__* %65)
  %67 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %47
  br label %69

69:                                               ; preds = %68, %35
  br label %70

70:                                               ; preds = %69, %11
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 2
  store i32 %73, i32* %71, align 4
  ret void
}

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i64 @type_get_type(%struct.TYPE_6__*) #1

declare dso_local zeroext i8 @get_basic_fc(%struct.TYPE_6__*) #1

declare dso_local zeroext i8 @get_enum_fc(%struct.TYPE_6__*) #1

declare dso_local i32 @string_of_type(i8 zeroext) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
