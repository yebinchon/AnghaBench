; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_unsquash_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_unsquash_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unsquash_guid(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @lstrlenW(i8* %8)
  %10 = icmp ne i32 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %170

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 123, i8* %18, align 1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %34, %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 7, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 %28, i8* %33, align 1
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 45, i8* %42, align 1
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 11, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 45, i8* %66, align 1
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %82, %61
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 15, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %67

85:                                               ; preds = %67
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 45, i8* %90, align 1
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %119, %85
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %122

94:                                               ; preds = %91
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %96, 2
  %98 = add nsw i32 17, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = mul nsw i32 %108, 2
  %110 = add nsw i32 16, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 %113, i8* %118, align 1
  br label %119

119:                                              ; preds = %94
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %91

122:                                              ; preds = %91
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 45, i8* %127, align 1
  br label %128

128:                                              ; preds = %156, %122
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 8
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = mul nsw i32 %133, 2
  %135 = add nsw i32 17, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 %138, i8* %143, align 1
  %144 = load i8*, i8** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = mul nsw i32 %145, 2
  %147 = add nsw i32 16, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8 %150, i8* %155, align 1
  br label %156

156:                                              ; preds = %131
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %128

159:                                              ; preds = %128
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8 125, i8* %164, align 1
  %165 = load i8*, i8** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 0, i8* %168, align 1
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %159, %11
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
