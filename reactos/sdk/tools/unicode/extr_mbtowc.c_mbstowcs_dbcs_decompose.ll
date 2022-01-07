; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_dbcs_decompose.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_dbcs_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i8*, i32, i32*, i32)* @mbstowcs_dbcs_decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbstowcs_dbcs_decompose(%struct.dbcs_table* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dbcs_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.dbcs_table* %0, %struct.dbcs_table** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %21 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %24 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %87, label %28

28:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %80, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %29
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %18, align 1
  %39 = load i8, i8* %18, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i8, i8* %18, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %56, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  br label %74

67:                                               ; preds = %45, %42, %32
  %68 = load i32*, i32** %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %67, %51
  %75 = load i32, i32* %16, align 4
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %77 = call i32 @wine_decompose(i32 %75, i32* %76, i32 4)
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %9, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  br label %29

85:                                               ; preds = %29
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %6, align 4
  br label %167

87:                                               ; preds = %5
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %154, %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ false, %89 ], [ %94, %92 ]
  br i1 %96, label %97, label %159

97:                                               ; preds = %95
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %19, align 1
  %104 = load i8, i8* %19, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  %109 = icmp ugt i32 %108, 1
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, -1
  store i32 %120, i32* %9, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i8, i8* %19, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %124, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %121, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %16, align 4
  br label %139

132:                                              ; preds = %110, %107, %97
  %133 = load i32*, i32** %12, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %132, %116
  %140 = load i32, i32* %16, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @wine_decompose(i32 %140, i32* %141, i32 %142)
  store i32 %143, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %159

146:                                              ; preds = %139
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %10, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %14, align 4
  %153 = sub i32 %152, %151
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = add i32 %155, -1
  store i32 %156, i32* %9, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  br label %89

159:                                              ; preds = %145, %95
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 -1, i32* %6, align 4
  br label %167

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %14, align 4
  %166 = sub i32 %164, %165
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %162, %85
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @wine_decompose(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
