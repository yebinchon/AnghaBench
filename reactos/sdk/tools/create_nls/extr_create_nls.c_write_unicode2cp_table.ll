; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_write_unicode2cp_table.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_write_unicode2cp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Not enough memory for Unicode to Codepage table\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i8*)* @write_unicode2cp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_unicode2cp_table(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 65536
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %144

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %75

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %44, %29
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 65536
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = bitcast i64* %37 to i8*
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %31

47:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 65536
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 63
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i64
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  store i8 %61, i8* %69, align 1
  br label %70

70:                                               ; preds = %59, %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %48

74:                                               ; preds = %48
  br label %122

75:                                               ; preds = %24
  %76 = load i8*, i8** %8, align 8
  %77 = bitcast i8* %76 to i64*
  store i64* %77, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %91, %75
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 65536
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %78

94:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %118, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 256
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 63
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64*, i64** %10, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i64
  %116 = getelementptr inbounds i64, i64* %109, i64 %115
  store i64 %108, i64* %116, align 8
  br label %117

117:                                              ; preds = %106, %98
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %95

121:                                              ; preds = %95
  br label %122

122:                                              ; preds = %121, %74
  %123 = load i8*, i8** %8, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = call i32 @patch_aliases(i8* %123, %struct.TYPE_4__* %124)
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 65536
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @fwrite(i8* %126, i32 1, i32 %130, i32* %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, 65536
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %122
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %138, %122
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %21
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @patch_aliases(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
