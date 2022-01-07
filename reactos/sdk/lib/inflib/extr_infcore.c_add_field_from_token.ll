; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_add_field_from_token.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_add_field_from_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { i32 }
%struct.parser = type { i32, i64, i32, i32*, i32* }

@INF_STATUS_WRONG_INF_STYLE = common dso_local global i32 0, align 4
@INF_STATUS_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field* (%struct.parser*, i32)* @add_field_from_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field* @add_field_from_token(%struct.parser* %0, i32 %1) #0 {
  %3 = alloca %struct.field*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.field*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.parser*, %struct.parser** %4, align 8
  %8 = getelementptr inbounds %struct.parser, %struct.parser* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = load %struct.parser*, %struct.parser** %4, align 8
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @INF_STATUS_WRONG_INF_STYLE, align 4
  %18 = load %struct.parser*, %struct.parser** %4, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store %struct.field* null, %struct.field** %3, align 8
  br label %65

20:                                               ; preds = %11
  %21 = load %struct.parser*, %struct.parser** %4, align 8
  %22 = getelementptr inbounds %struct.parser, %struct.parser* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32* @InfpAddLine(i32* %23)
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = getelementptr inbounds %struct.parser, %struct.parser* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.parser*, %struct.parser** %4, align 8
  %28 = getelementptr inbounds %struct.parser, %struct.parser* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %61

32:                                               ; preds = %20
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.parser*, %struct.parser** %4, align 8
  %39 = getelementptr inbounds %struct.parser, %struct.parser* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.parser*, %struct.parser** %4, align 8
  %42 = getelementptr inbounds %struct.parser, %struct.parser* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.field* @InfpAddKeyToLine(i32* %40, i32 %43)
  store %struct.field* %44, %struct.field** %6, align 8
  br label %53

45:                                               ; preds = %34
  %46 = load %struct.parser*, %struct.parser** %4, align 8
  %47 = getelementptr inbounds %struct.parser, %struct.parser* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.parser*, %struct.parser** %4, align 8
  %50 = getelementptr inbounds %struct.parser, %struct.parser* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.field* @InfpAddFieldToLine(i32* %48, i32 %51)
  store %struct.field* %52, %struct.field** %6, align 8
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.field*, %struct.field** %6, align 8
  %55 = icmp ne %struct.field* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.parser*, %struct.parser** %4, align 8
  %58 = getelementptr inbounds %struct.parser, %struct.parser* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.field*, %struct.field** %6, align 8
  store %struct.field* %59, %struct.field** %3, align 8
  br label %65

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* @INF_STATUS_NOT_ENOUGH_MEMORY, align 4
  %63 = load %struct.parser*, %struct.parser** %4, align 8
  %64 = getelementptr inbounds %struct.parser, %struct.parser* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store %struct.field* null, %struct.field** %3, align 8
  br label %65

65:                                               ; preds = %61, %56, %16
  %66 = load %struct.field*, %struct.field** %3, align 8
  ret %struct.field* %66
}

declare dso_local i32* @InfpAddLine(i32*) #1

declare dso_local %struct.field* @InfpAddKeyToLine(i32*, i32) #1

declare dso_local %struct.field* @InfpAddFieldToLine(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
