; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_do_var_replacement.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_do_var_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_variable** }
%struct.sway_variable = type { i8*, i8* }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to allocate replacement during variable expansion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @do_var_replacement(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sway_variable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %173, %53, %43, %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 36)
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %174

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ugt i8* %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 92
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = icmp eq i8* %28, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = icmp ugt i8* %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -2
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %32, %27
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %13

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %21, %17
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 36
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @memmove(i8* %58, i8* %60, i64 %61)
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %13

68:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %159, %68
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %162

77:                                               ; preds = %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load %struct.sway_variable**, %struct.sway_variable*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sway_variable*, %struct.sway_variable** %82, i64 %84
  %86 = load %struct.sway_variable*, %struct.sway_variable** %85, align 8
  store %struct.sway_variable* %86, %struct.sway_variable** %6, align 8
  %87 = load %struct.sway_variable*, %struct.sway_variable** %6, align 8
  %88 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strlen(i8* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.sway_variable*, %struct.sway_variable** %6, align 8
  %93 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @strncmp(i8* %91, i8* %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %77
  %99 = load %struct.sway_variable*, %struct.sway_variable** %6, align 8
  %100 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strlen(i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i8*, i8** %2, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  %110 = call i8* @malloc(i32 %109)
  store i8* %110, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %98
  %114 = load i32, i32* @SWAY_ERROR, align 4
  %115 = call i32 @sway_log(i32 %114, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %162

116:                                              ; preds = %98
  %117 = load i8*, i8** %9, align 8
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %2, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @strncpy(i8* %124, i8* %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.sway_variable*, %struct.sway_variable** %6, align 8
  %134 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @strncpy(i8* %132, i8* %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = load i8*, i8** %10, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %10, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = call i32 @strcpy(i8* %142, i8* %146)
  %148 = load i8*, i8** %2, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %9, align 8
  store i8* %150, i8** %2, align 8
  %151 = load i8*, i8** %2, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8* %157, i8** %4, align 8
  br label %162

158:                                              ; preds = %77
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %69

162:                                              ; preds = %116, %113, %69
  %163 = load i32, i32* %3, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %163, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %4, align 8
  br label %173

173:                                              ; preds = %170, %162
  br label %13

174:                                              ; preds = %13
  %175 = load i8*, i8** %2, align 8
  ret i8* %175
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
