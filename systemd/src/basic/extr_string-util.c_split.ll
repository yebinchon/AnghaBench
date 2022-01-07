; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_split.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPLIT_QUOTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"'\22\00", align 1
@SPLIT_RELAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @split(i8** %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8], align 1
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store i8* null, i8** %5, align 8
  br label %186

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strspn(i8* %26, i8* %27)
  %29 = load i8*, i8** %10, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i8*, i8** %10, align 8
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  store i8* null, i8** %5, align 8
  br label %186

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SPLIT_QUOTES, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %133

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %133

48:                                               ; preds = %43
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %49, align 1
  %52 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %56 = call i64 @strcspn_escaped(i8* %54, i8* %55)
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %48
  %67 = load i8*, i8** %10, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %97, label %78

78:                                               ; preds = %66
  %79 = load i8*, i8** %10, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 2
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %78
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 2
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @strchr(i8* %88, i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %87, %66, %48
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @SPLIT_RELAX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8*, i8** %10, align 8
  %109 = load i64*, i64** %7, align 8
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %107, i64 %117
  %119 = load i8**, i8*** %6, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %5, align 8
  br label %186

122:                                              ; preds = %97
  %123 = load i8*, i8** %10, align 8
  %124 = load i8**, i8*** %6, align 8
  store i8* %123, i8** %124, align 8
  store i8* null, i8** %5, align 8
  br label %186

125:                                              ; preds = %87, %78
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8**, i8*** %6, align 8
  store i8* %131, i8** %132, align 8
  br label %184

133:                                              ; preds = %43, %38
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @SPLIT_QUOTES, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %173

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i64 @strcspn_escaped(i8* %139, i8* %140)
  %142 = load i64*, i64** %7, align 8
  store i64 %141, i64* %142, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i64*, i64** %7, align 8
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %138
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = call i64 @strchr(i8* %151, i8 signext %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @SPLIT_RELAX, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = load i8*, i8** %10, align 8
  %166 = load i8**, i8*** %6, align 8
  store i8* %165, i8** %166, align 8
  store i8* null, i8** %5, align 8
  br label %186

167:                                              ; preds = %159, %150, %138
  %168 = load i8*, i8** %10, align 8
  %169 = load i64*, i64** %7, align 8
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8**, i8*** %6, align 8
  store i8* %171, i8** %172, align 8
  br label %183

173:                                              ; preds = %133
  %174 = load i8*, i8** %10, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = call i64 @strcspn(i8* %174, i8* %175)
  %177 = load i64*, i64** %7, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i8*, i8** %10, align 8
  %179 = load i64*, i64** %7, align 8
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8**, i8*** %6, align 8
  store i8* %181, i8** %182, align 8
  br label %183

183:                                              ; preds = %173, %167
  br label %184

184:                                              ; preds = %183, %125
  %185 = load i8*, i8** %10, align 8
  store i8* %185, i8** %5, align 8
  br label %186

186:                                              ; preds = %184, %164, %122, %102, %35, %17
  %187 = load i8*, i8** %5, align 8
  ret i8* %187
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcspn_escaped(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
