; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_oid_from_str.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_oid_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i8*, i64*)* @oid_from_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @oid_from_str(i8* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* null, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i64* null, i64** %3, align 8
  br label %123

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 1, %23
  %25 = add nsw i64 %24, 2
  %26 = call i64* @malloc(i64 %25)
  store i64* %26, i64** %6, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i64* null, i64** %3, align 8
  br label %123

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %101, %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strtoul(i8* %34, i8** %9, i32 10)
  store i64 %35, i64* %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @isdigit(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %31
  br label %120

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %106

65:                                               ; preds = %61
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %7, align 8
  br label %100

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %71, 2
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = icmp ugt i64 %74, 39
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %120

77:                                               ; preds = %73
  %78 = load i64, i64* %7, align 8
  %79 = mul i64 %78, 40
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %79, %80
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %85, align 8
  br label %93

86:                                               ; preds = %70
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 80
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i64 @make_flagged_int(i64 %89, i64* %90, i64 %91)
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %86, %77
  br label %99

94:                                               ; preds = %67
  %95 = load i64, i64* %8, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @make_flagged_int(i64 %95, i64* %96, i64 %97)
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %94, %93
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 46
  br i1 %105, label %31, label %106

106:                                              ; preds = %101, %64
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %11, align 8
  %111 = icmp ult i64 %110, 2
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %11, align 8
  %114 = icmp ugt i64 %113, 254
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %109, %106
  br label %120

116:                                              ; preds = %112
  %117 = load i64, i64* %11, align 8
  %118 = load i64*, i64** %5, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i64*, i64** %6, align 8
  store i64* %119, i64** %3, align 8
  br label %123

120:                                              ; preds = %115, %76, %49
  %121 = load i64*, i64** %6, align 8
  %122 = call i32 @free(i64* %121)
  store i64* null, i64** %3, align 8
  br label %123

123:                                              ; preds = %120, %116, %29, %20
  %124 = load i64*, i64** %3, align 8
  ret i64* %124
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @make_flagged_int(i64, i64*, i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
