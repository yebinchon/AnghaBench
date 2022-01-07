; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyParseNumber.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyParseNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, double*)* @geopolyParseNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geopolyParseNumber(%struct.TYPE_4__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double* %1, double** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call signext i8 @geopolySkipSpace(%struct.TYPE_4__* %11)
  store i8 %12, i8* %6, align 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %6, align 1
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sle i32 %45, 57
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %164

48:                                               ; preds = %38, %29, %25
  br label %49

49:                                               ; preds = %134, %48
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %6, align 1
  %55 = load i8, i8* %6, align 1
  %56 = call i64 @safe_isdigit(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %134

59:                                               ; preds = %49
  %60 = load i8, i8* %6, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %164

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %164

77:                                               ; preds = %73
  store i32 1, i32* %9, align 4
  br label %134

78:                                               ; preds = %59
  %79 = load i8, i8* %6, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 101
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i8, i8* %6, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 69
  br i1 %85, label %86, label %133

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %93, 48
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %164

96:                                               ; preds = %86
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %164

100:                                              ; preds = %96
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %6, align 1
  %107 = load i8, i8* %6, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 43
  br i1 %109, label %114, label %110

110:                                              ; preds = %100
  %111 = load i8, i8* %6, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br i1 %113, label %114, label %123

114:                                              ; preds = %110, %100
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %6, align 1
  br label %123

123:                                              ; preds = %114, %110
  %124 = load i8, i8* %6, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp slt i32 %125, 48
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i8, i8* %6, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sgt i32 %129, 57
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %123
  store i32 0, i32* %3, align 4
  br label %164

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %82
  br label %137

134:                                              ; preds = %132, %77, %58
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %49

137:                                              ; preds = %133
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp slt i32 %144, 48
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %164

147:                                              ; preds = %137
  %148 = load double*, double** %5, align 8
  %149 = icmp ne double* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @atof(i8* %153)
  %155 = sitofp i64 %154 to double
  %156 = load double*, double** %5, align 8
  store double %155, double* %156, align 8
  br label %157

157:                                              ; preds = %150, %147
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = sext i32 %158 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %160, align 8
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %157, %146, %131, %99, %95, %76, %72, %47
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local signext i8 @geopolySkipSpace(%struct.TYPE_4__*) #1

declare dso_local i64 @safe_isdigit(i8 signext) #1

declare dso_local i64 @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
