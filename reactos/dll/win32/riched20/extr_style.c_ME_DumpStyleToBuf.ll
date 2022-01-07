; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_style.c_ME_DumpStyleToBuf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_style.c_ME_DumpStyleToBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Font face:            \00", align 1
@CFM_FACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@CFM_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AFont size:            %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0AFont size:            N/A\0A\00", align 1
@CFM_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Char offset:          %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Char offset:          N/A\0A\00", align 1
@CFM_CHARSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Font charset:         %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Font charset:         N/A\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Font bold:\00", align 1
@CFM_BOLD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"Font italic:\00", align 1
@CFM_ITALIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"Font underline:\00", align 1
@CFM_UNDERLINE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"Font strikeout:\00", align 1
@CFM_STRIKEOUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"Hidden text:\00", align 1
@CFM_HIDDEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Text color:           \00", align 1
@CFM_COLOR = common dso_local global i32 0, align 4
@CFE_AUTOCOLOR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"auto\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%06x\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"N/A\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Text protected:\00", align 1
@CFM_PROTECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_DumpStyleToBuf(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %5, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CFM_FACE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %35, %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 63, %31 ], [ %34, %32 ]
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %6, align 8
  br label %23

42:                                               ; preds = %23
  br label %49

43:                                               ; preds = %2
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %43, %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CFM_SIZE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %5, align 8
  br label %71

65:                                               ; preds = %49
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i8*, i8** %5, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %65, %56
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CFM_OFFSET, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %5, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %5, align 8
  br label %93

87:                                               ; preds = %71
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i8*, i8** %5, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %5, align 8
  br label %93

93:                                               ; preds = %87, %78
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CFM_CHARSET, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load i8*, i8** %5, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** %5, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %5, align 8
  br label %116

110:                                              ; preds = %93
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i8*, i8** %5, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %5, align 8
  br label %116

116:                                              ; preds = %110, %100
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = load i32, i32* @CFM_BOLD, align 4
  %119 = call i32 @ME_DumpStyleEffect(i8** %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_4__* %117, i32 %118)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = load i32, i32* @CFM_ITALIC, align 4
  %122 = call i32 @ME_DumpStyleEffect(i8** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_4__* %120, i32 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = load i32, i32* @CFM_UNDERLINE, align 4
  %125 = call i32 @ME_DumpStyleEffect(i8** %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_4__* %123, i32 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = load i32, i32* @CFM_STRIKEOUT, align 4
  %128 = call i32 @ME_DumpStyleEffect(i8** %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_4__* %126, i32 %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = load i32, i32* @CFM_HIDDEN, align 4
  %131 = call i32 @ME_DumpStyleEffect(i8** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_4__* %129, i32 %130)
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %134 = load i8*, i8** %5, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %5, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CFM_COLOR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %116
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CFE_AUTOCOLOR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %153 = load i8*, i8** %5, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %5, align 8
  br label %166

156:                                              ; preds = %143
  %157 = load i8*, i8** %5, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %161)
  %163 = load i8*, i8** %5, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %5, align 8
  br label %166

166:                                              ; preds = %156, %150
  br label %173

167:                                              ; preds = %116
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %170 = load i8*, i8** %5, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %5, align 8
  br label %173

173:                                              ; preds = %167, %166
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %175 = load i32, i32* @CFM_PROTECTED, align 4
  %176 = call i32 @ME_DumpStyleEffect(i8** %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_4__* %174, i32 %175)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ME_DumpStyleEffect(i8**, i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
