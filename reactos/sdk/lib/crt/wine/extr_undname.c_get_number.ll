; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_number.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_symbol*)* @get_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_number(%struct.parsed_symbol* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.parsed_symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %9 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 63
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %17 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %22 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %68

27:                                               ; preds = %20
  %28 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %29 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 56
  br i1 %33, label %34, label %68

34:                                               ; preds = %27
  %35 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %36 = call i8* @und_alloc(%struct.parsed_symbol* %35, i32 3)
  store i8* %36, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 45, i8* %41, align 1
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %44 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 %49, i8* %56, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %65 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  br label %177

68:                                               ; preds = %27, %20
  %69 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %70 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 57
  br i1 %74, label %75, label %109

75:                                               ; preds = %68
  %76 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %77 = call i8* @und_alloc(%struct.parsed_symbol* %76, i32 4)
  store i8* %77, i8** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 45, i8* %82, align 1
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  store i8 49, i8* %90, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 2, i32 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  store i8 48, i8* %97, align 1
  %98 = load i8*, i8** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 3, i32 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %106 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  br label %176

109:                                              ; preds = %68
  %110 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %111 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 65
  br i1 %115, label %116, label %174

116:                                              ; preds = %109
  %117 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %118 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sle i32 %121, 80
  br i1 %122, label %123, label %174

123:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %140, %123
  %125 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %126 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sge i32 %129, 65
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %133 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 80
  br label %138

138:                                              ; preds = %131, %124
  %139 = phi i1 [ false, %124 ], [ %137, %131 ]
  br i1 %139, label %140, label %152

140:                                              ; preds = %138
  %141 = load i32, i32* %6, align 4
  %142 = mul nsw i32 %141, 16
  store i32 %142, i32* %6, align 4
  %143 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %144 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %144, align 8
  %147 = load i8, i8* %145, align 1
  %148 = sext i8 %147 to i32
  %149 = sub nsw i32 %148, 65
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %124

152:                                              ; preds = %138
  %153 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %154 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 64
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i8* null, i8** %2, align 8
  br label %179

160:                                              ; preds = %152
  %161 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %162 = call i8* @und_alloc(%struct.parsed_symbol* %161, i32 17)
  store i8* %162, i8** %4, align 8
  %163 = load i8*, i8** %4, align 8
  %164 = load i64, i64* %5, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @sprintf(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %167, i32 %168)
  %170 = load %struct.parsed_symbol*, %struct.parsed_symbol** %3, align 8
  %171 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %171, align 8
  br label %175

174:                                              ; preds = %116, %109
  store i8* null, i8** %2, align 8
  br label %179

175:                                              ; preds = %160
  br label %176

176:                                              ; preds = %175, %83
  br label %177

177:                                              ; preds = %176, %42
  %178 = load i8*, i8** %4, align 8
  store i8* %178, i8** %2, align 8
  br label %179

179:                                              ; preds = %177, %174, %159
  %180 = load i8*, i8** %2, align 8
  ret i8* %180
}

declare dso_local i8* @und_alloc(%struct.parsed_symbol*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
