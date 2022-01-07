; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_field_from_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_add_field_from_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { i32 }
%struct.parser = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ERROR_EXPECTED_SECTION_NAME = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field* (%struct.parser*, i32)* @add_field_from_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field* @add_field_from_token(%struct.parser* %0, i32 %1) #0 {
  %3 = alloca %struct.field*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.field*, align 8
  %7 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = load %struct.parser*, %struct.parser** %4, align 8
  %14 = getelementptr inbounds %struct.parser, %struct.parser* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @ERROR_EXPECTED_SECTION_NAME, align 4
  %19 = load %struct.parser*, %struct.parser** %4, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  store %struct.field* null, %struct.field** %3, align 8
  br label %89

21:                                               ; preds = %12
  %22 = load %struct.parser*, %struct.parser** %4, align 8
  %23 = getelementptr inbounds %struct.parser, %struct.parser* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = getelementptr inbounds %struct.parser, %struct.parser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_2__* @add_line(i32 %24, i32 %27)
  %29 = load %struct.parser*, %struct.parser** %4, align 8
  %30 = getelementptr inbounds %struct.parser, %struct.parser* %29, i32 0, i32 3
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %30, align 8
  %31 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %85

33:                                               ; preds = %21
  br label %40

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  br label %40

40:                                               ; preds = %34, %33
  %41 = load %struct.parser*, %struct.parser** %4, align 8
  %42 = getelementptr inbounds %struct.parser, %struct.parser* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.parser*, %struct.parser** %4, align 8
  %45 = getelementptr inbounds %struct.parser, %struct.parser* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @push_string(i32 %43, i32 %46)
  store i32* %47, i32** %7, align 8
  %48 = load %struct.parser*, %struct.parser** %4, align 8
  %49 = getelementptr inbounds %struct.parser, %struct.parser* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call %struct.field* @add_field(i32 %50, i32* %51)
  store %struct.field* %52, %struct.field** %6, align 8
  %53 = icmp ne %struct.field* %52, null
  br i1 %53, label %54, label %84

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load %struct.parser*, %struct.parser** %4, align 8
  %59 = getelementptr inbounds %struct.parser, %struct.parser* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %80

64:                                               ; preds = %54
  %65 = load %struct.parser*, %struct.parser** %4, align 8
  %66 = getelementptr inbounds %struct.parser, %struct.parser* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.parser*, %struct.parser** %4, align 8
  %71 = getelementptr inbounds %struct.parser, %struct.parser* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.parser*, %struct.parser** %4, align 8
  %75 = getelementptr inbounds %struct.parser, %struct.parser* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %64, %57
  %81 = load %struct.parser*, %struct.parser** %4, align 8
  %82 = getelementptr inbounds %struct.parser, %struct.parser* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.field*, %struct.field** %6, align 8
  store %struct.field* %83, %struct.field** %3, align 8
  br label %89

84:                                               ; preds = %40
  br label %85

85:                                               ; preds = %84, %32
  %86 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %87 = load %struct.parser*, %struct.parser** %4, align 8
  %88 = getelementptr inbounds %struct.parser, %struct.parser* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store %struct.field* null, %struct.field** %3, align 8
  br label %89

89:                                               ; preds = %85, %80, %17
  %90 = load %struct.field*, %struct.field** %3, align 8
  ret %struct.field* %90
}

declare dso_local %struct.TYPE_2__* @add_line(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @push_string(i32, i32) #1

declare dso_local %struct.field* @add_field(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
