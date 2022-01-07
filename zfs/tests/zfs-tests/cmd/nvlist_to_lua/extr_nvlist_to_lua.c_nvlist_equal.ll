; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/nvlist_to_lua/extr_nvlist_to_lua.c_nvlist_equal.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/nvlist_to_lua/extr_nvlist_to_lua.c_nvlist_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected type for nvlist_equal\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @nvlist_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvlist_equal(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @fnvlist_num_pairs(i32* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @fnvlist_num_pairs(i32* %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @B_FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @nvlist_next_nvpair(i32* %16, i32* null)
  store i32* %17, i32** %6, align 8
  br label %18

18:                                               ; preds = %89, %15
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %93

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @nvpair_name(i32* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @nvlist_exists(i32* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @B_FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %95

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @nvpair_type(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @fnvlist_lookup_nvpair(i32* %33, i8* %34)
  %36 = call i64 @nvpair_type(i32* %35)
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @B_FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %95

40:                                               ; preds = %30
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @nvpair_type(i32* %41)
  switch i64 %42, label %85 [
    i64 131, label %43
    i64 128, label %53
    i64 130, label %64
    i64 129, label %74
  ]

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @fnvpair_value_boolean_value(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @fnvlist_lookup_boolean_value(i32* %46, i8* %47)
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @B_FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %95

52:                                               ; preds = %43
  br label %88

53:                                               ; preds = %40
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @fnvpair_value_string(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @fnvlist_lookup_string(i32* %56, i8* %57)
  %59 = call i32 @strcmp(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @B_FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %95

63:                                               ; preds = %53
  br label %88

64:                                               ; preds = %40
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @fnvpair_value_int64(i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @fnvlist_lookup_int64(i32* %67, i8* %68)
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @B_FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %95

73:                                               ; preds = %64
  br label %88

74:                                               ; preds = %40
  %75 = load i32*, i32** %6, align 8
  %76 = call i32* @fnvpair_value_nvlist(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32* @fnvlist_lookup_nvlist(i32* %77, i8* %78)
  %80 = call i32 @nvlist_equal(i32* %76, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @B_FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %95

84:                                               ; preds = %74
  br label %88

85:                                               ; preds = %40
  %86 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @B_FALSE, align 4
  store i32 %87, i32* %3, align 4
  br label %95

88:                                               ; preds = %84, %73, %63, %52
  br label %89

89:                                               ; preds = %88
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i32* @nvlist_next_nvpair(i32* %90, i32* %91)
  store i32* %92, i32** %6, align 8
  br label %18

93:                                               ; preds = %18
  %94 = load i32, i32* @B_TRUE, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %85, %82, %71, %61, %50, %38, %28, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @fnvlist_num_pairs(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32* @fnvlist_lookup_nvpair(i32*, i8*) #1

declare dso_local i32 @fnvpair_value_boolean_value(i32*) #1

declare dso_local i32 @fnvlist_lookup_boolean_value(i32*, i8*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @fnvpair_value_string(i32*) #1

declare dso_local i32 @fnvlist_lookup_string(i32*, i8*) #1

declare dso_local i32 @fnvpair_value_int64(i32*) #1

declare dso_local i32 @fnvlist_lookup_int64(i32*, i8*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
