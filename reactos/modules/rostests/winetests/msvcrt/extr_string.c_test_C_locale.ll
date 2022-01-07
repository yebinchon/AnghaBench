; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_C_locale.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_C_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_C_locale.locales = internal global [2 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"expected %x, got %x for C locale\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"expected self %x, got %x for C locale\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_C_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_C_locale() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @LC_ALL, align 4
  %7 = call i32 @setlocale(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %66, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp sle i32 %9, 65535
  br i1 %10, label %11, label %69

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @p_towlower(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %1, align 4
  %18 = icmp sle i32 %17, 90
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 97
  %22 = sub nsw i32 %21, 65
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %38

30:                                               ; preds = %16, %11
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %19
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @p_towupper(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i32, i32* %1, align 4
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 65
  %49 = sub nsw i32 %48, 97
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %43, %38
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %1, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %8

69:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %156, %69
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_C_locale.locales, i64 0, i64 0))
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %159

74:                                               ; preds = %70
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i8*], [2 x i8*]* @test_C_locale.locales, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* @LC_ALL, align 4
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i8*], [2 x i8*]* @test_C_locale.locales, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32* @p__create_locale(i32 %81, i8* %85)
  br label %88

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %80
  %89 = phi i32* [ %86, %80 ], [ null, %87 ]
  store i32* %89, i32** %5, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %150, %88
  %91 = load i32, i32* %2, align 4
  %92 = icmp sle i32 %91, 65535
  br i1 %92, label %93, label %153

93:                                               ; preds = %90
  %94 = load i32, i32* %2, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @p__towlower_l(i32 %94, i32* %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %2, align 4
  %98 = icmp sge i32 %97, 65
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load i32, i32* %2, align 4
  %101 = icmp sle i32 %100, 90
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 97
  %105 = sub nsw i32 %104, 65
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  br label %121

113:                                              ; preds = %99, %93
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %2, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %102
  %122 = load i32, i32* %2, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @p__towupper_l(i32 %122, i32* %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp sge i32 %125, 97
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load i32, i32* %2, align 4
  %129 = icmp sle i32 %128, 122
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, 65
  %133 = sub nsw i32 %132, 97
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  br label %149

141:                                              ; preds = %127, %121
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %2, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %141, %130
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %2, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %2, align 4
  br label %90

153:                                              ; preds = %90
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @p__free_locale(i32* %154)
  br label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %70

159:                                              ; preds = %70
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @p_towlower(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @p_towupper(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32* @p__create_locale(i32, i8*) #1

declare dso_local i32 @p__towlower_l(i32, i32*) #1

declare dso_local i32 @p__towupper_l(i32, i32*) #1

declare dso_local i32 @p__free_locale(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
