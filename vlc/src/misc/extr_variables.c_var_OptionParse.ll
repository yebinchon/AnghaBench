; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_OptionParse.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_OptionParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"unsafe option \22%s\22 has been ignored for security reasons\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @var_OptionParse(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %170

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %170

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 61)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  store i8 0, i8* %41, align 1
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @config_GetType(i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = add nsw i64 %60, 1
  %62 = sub nsw i64 %61, 3
  %63 = call i32 @memmove(i8* %56, i8* %58, i64 %62)
  br label %79

64:                                               ; preds = %51
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = add nsw i64 %73, 1
  %75 = sub nsw i64 %74, 2
  %76 = call i32 @memmove(i8* %69, i8* %71, i64 %75)
  br label %78

77:                                               ; preds = %64
  br label %167

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %55
  store i32 1, i32* %10, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @config_GetType(i8* %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %48, %43
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %167

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 131
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %89
  br label %167

97:                                               ; preds = %92, %86
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @config_IsSafe(i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %4, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @msg_Err(i32* %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @free(i8* %108)
  br label %170

110:                                              ; preds = %100, %97
  %111 = load i32*, i32** %4, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @var_Create(i32* %111, i8* %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  switch i32 %115, label %162 [
    i32 131, label %116
    i32 129, label %151
    i32 130, label %155
    i32 128, label %159
  ]

116:                                              ; preds = %110
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load i8*, i8** %8, align 8
  %121 = call i8* @strtoll(i8* %120, i8** %12, i32 0)
  %122 = ptrtoint i8* %121 to i64
  store i64 %122, i64* %13, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %119
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @strcasecmp(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @strcasecmp(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ true, %126 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %136, i32* %137, align 8
  br label %143

138:                                              ; preds = %119
  %139 = load i64, i64* %13, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %141, i32* %142, align 8
  br label %143

143:                                              ; preds = %138, %134
  br label %150

144:                                              ; preds = %116
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %148, i32* %149, align 8
  br label %150

150:                                              ; preds = %144, %143
  br label %163

151:                                              ; preds = %110
  %152 = load i8*, i8** %8, align 8
  %153 = call i8* @strtoll(i8* %152, i8** null, i32 0)
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i8* %153, i8** %154, align 8
  br label %163

155:                                              ; preds = %110
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @us_atof(i8* %156)
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %157, i32* %158, align 4
  br label %163

159:                                              ; preds = %110
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* %160, i8** %161, align 8
  br label %163

162:                                              ; preds = %110
  br label %167

163:                                              ; preds = %159, %155, %151, %150
  %164 = load i32*, i32** %4, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @var_Set(i32* %164, i8* %165, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %11)
  br label %167

167:                                              ; preds = %163, %162, %96, %85, %77
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @free(i8* %168)
  br label %170

170:                                              ; preds = %167, %104, %34, %28
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @config_GetType(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @config_IsSafe(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i8* @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @us_atof(i8*) #1

declare dso_local i32 @var_Set(i32*, i8*, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
