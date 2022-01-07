; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_type_right.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_type_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" : %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_type_right(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %92

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @type_is_alias(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %92

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @type_get_type(i32* %18)
  switch i32 %19, label %92 [
    i32 140, label %20
    i32 131, label %63
    i32 138, label %84
    i32 128, label %91
    i32 139, label %91
    i32 135, label %91
    i32 130, label %91
    i32 136, label %91
    i32 129, label %91
    i32 141, label %91
    i32 132, label %91
    i32 137, label %91
    i32 134, label %91
    i32 133, label %91
  ]

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @type_array_get_element(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @type_array_is_decl_as_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @type_is_alias(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @is_array(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @type_array_is_decl_as_ptr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34, %30, %26
  br label %59

42:                                               ; preds = %20
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @is_conformant_array(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %58

53:                                               ; preds = %42
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @type_array_get_dim(i32* %55)
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %46
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @FALSE, align 4
  call void @write_type_right(i32* %60, i32* %61, i32 %62)
  br label %92

63:                                               ; preds = %17
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @type_pointer_get_ref(i32* %64)
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @type_is_alias(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @is_array(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @type_array_is_decl_as_ptr(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73, %69, %63
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @FALSE, align 4
  call void @write_type_right(i32* %81, i32* %82, i32 %83)
  br label %92

84:                                               ; preds = %17
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call %struct.TYPE_2__* @type_bitfield_get_bits(i32* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %92

91:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  br label %92

92:                                               ; preds = %11, %16, %17, %91, %84, %80, %59
  ret void
}

declare dso_local i64 @type_is_alias(i32*) #1

declare dso_local i32 @type_get_type(i32*) #1

declare dso_local i32* @type_array_get_element(i32*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(i32*) #1

declare dso_local i32 @is_array(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @is_conformant_array(i32*) #1

declare dso_local i32 @type_array_get_dim(i32*) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

declare dso_local %struct.TYPE_2__* @type_bitfield_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
