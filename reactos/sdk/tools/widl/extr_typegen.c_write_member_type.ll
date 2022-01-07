; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_member_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_member_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@TYPE_UNION = common dso_local global i64 0, align 8
@ATTR_SWITCHIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"0x4c,\09/* FC_EMBEDDED_COMPLEX */\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x0,\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NdrFcShort(0x%hx),\09/* Offset= %hd (%u) */\0A\00", align 1
@FC_POINTER = common dso_local global i8 0, align 1
@FC_LONG = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"0x%x,\09/* %s */\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unsupported member type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, i32*, %struct.TYPE_9__*, i32*, i32*)* @write_member_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_member_type(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3, %struct.TYPE_9__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i8, align 1
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %19 = call i64 @is_embedded_complex(%struct.TYPE_9__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %7
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %23 = call i64 @is_conformant_array(%struct.TYPE_9__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = call i64 @type_get_type(%struct.TYPE_9__* %26)
  %28 = load i64, i64* @TYPE_UNION, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @ATTR_SWITCHIS, align 4
  %33 = call i64 @is_attr(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, 8
  store i32 %40, i32* %38, align 4
  br label %45

41:                                               ; preds = %30, %25
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %15, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, 2
  %50 = sub i32 %46, %49
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %16, align 2
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %52, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %54, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %8, align 8
  %57 = load i16, i16* %16, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* %16, align 2
  %60 = sext i16 %59 to i32
  %61 = load i32, i32* %15, align 4
  %62 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %56, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60, i32 %61)
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, 4
  store i32 %65, i32* %63, align 4
  br label %107

66:                                               ; preds = %21, %7
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = call i64 @is_ptr(%struct.TYPE_9__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = call i64 @is_conformant_array(%struct.TYPE_9__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8, i8* @FC_POINTER, align 1
  %79 = zext i8 %78 to i32
  br label %83

80:                                               ; preds = %74
  %81 = load i8, i8* @FC_LONG, align 1
  %82 = zext i8 %81 to i32
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i32 [ %79, %77 ], [ %82, %80 ]
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %17, align 1
  %86 = load i32*, i32** %8, align 8
  %87 = load i8, i8* %17, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %17, align 1
  %90 = call i32 @string_of_type(i8 zeroext %89)
  %91 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %86, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %90)
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %106

95:                                               ; preds = %70
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @write_base_type(i32* %96, %struct.TYPE_9__* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %103 = call i64 @type_get_type(%struct.TYPE_9__* %102)
  %104 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %83
  br label %107

107:                                              ; preds = %106, %45
  ret void
}

declare dso_local i64 @is_embedded_complex(%struct.TYPE_9__*) #1

declare dso_local i64 @is_conformant_array(%struct.TYPE_9__*) #1

declare dso_local i64 @type_get_type(%struct.TYPE_9__*) #1

declare dso_local i64 @is_attr(i32*, i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i64 @is_ptr(%struct.TYPE_9__*) #1

declare dso_local i32 @string_of_type(i8 zeroext) #1

declare dso_local i32 @write_base_type(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
