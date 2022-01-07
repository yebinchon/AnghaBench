; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_strtoll.c_strtoll.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_strtoll.c_strtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\09 \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoll(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 10, %16 ]
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strspn(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  store i32 -1, i32* %9, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 48
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  store i32 8, i32* %10, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 120
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  store i32 16, i32* %10, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8**, i8*** %6, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %4, align 8
  br label %205

62:                                               ; preds = %50, %47
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %195 [
    i32 10, label %64
    i32 16, label %95
  ]

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 57
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  %78 = load i64, i64* %8, align 8
  %79 = mul nsw i64 %78, 10
  store i64 %79, i64* %8, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 48
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %8, align 8
  br label %65

88:                                               ; preds = %75
  %89 = load i8**, i8*** %6, align 8
  %90 = icmp ne i8** %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = load i8**, i8*** %6, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %200

95:                                               ; preds = %62
  br label %96

96:                                               ; preds = %179, %95
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 57
  br i1 %105, label %128, label %106

106:                                              ; preds = %101, %96
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sge i32 %109, 97
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sle i32 %114, 102
  br i1 %115, label %128, label %116

116:                                              ; preds = %111, %106
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sge i32 %119, 65
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 70
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i1 [ false, %116 ], [ %125, %121 ]
  br label %128

128:                                              ; preds = %126, %111, %101
  %129 = phi i1 [ true, %111 ], [ true, %101 ], [ %127, %126 ]
  br i1 %129, label %130, label %188

130:                                              ; preds = %128
  store i32 0, i32* %11, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sge i32 %133, 48
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sle i32 %138, 57
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i8*, i8** %5, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = sub nsw i32 %143, 48
  store i32 %144, i32* %11, align 4
  br label %179

145:                                              ; preds = %135, %130
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sge i32 %148, 97
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load i8*, i8** %5, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp sle i32 %153, 102
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i8*, i8** %5, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = sub nsw i32 %158, 97
  %160 = add nsw i32 %159, 10
  store i32 %160, i32* %11, align 4
  br label %178

161:                                              ; preds = %150, %145
  %162 = load i8*, i8** %5, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp sge i32 %164, 65
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i8*, i8** %5, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp sle i32 %169, 70
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i8*, i8** %5, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = sub nsw i32 %174, 65
  %176 = add nsw i32 %175, 10
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %171, %166, %161
  br label %178

178:                                              ; preds = %177, %155
  br label %179

179:                                              ; preds = %178, %140
  %180 = load i64, i64* %8, align 8
  %181 = mul nsw i64 %180, 16
  store i64 %181, i64* %8, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %8, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %8, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %5, align 8
  br label %96

188:                                              ; preds = %128
  %189 = load i8**, i8*** %6, align 8
  %190 = icmp ne i8** %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = load i8**, i8*** %6, align 8
  store i8* %192, i8** %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  br label %200

195:                                              ; preds = %62
  %196 = load i8*, i8** %5, align 8
  %197 = load i8**, i8*** %6, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i64 @strtol(i8* %196, i8** %197, i32 %198)
  store i64 %199, i64* %8, align 8
  br label %200

200:                                              ; preds = %195, %194, %94
  %201 = load i64, i64* %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %201, %203
  store i64 %204, i64* %4, align 8
  br label %205

205:                                              ; preds = %200, %60
  %206 = load i64, i64* %4, align 8
  ret i64 %206
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
