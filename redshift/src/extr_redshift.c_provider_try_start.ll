; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_provider_try_start.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_provider_try_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32**)*, i8*, i32 (i32*, i8*, i8*)*, i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_7__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Initialization of %s failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set %s option.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Try `-l %s:help' for more information.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@__const.provider_try_start.manual_keys = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to parse option `%s'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to start provider %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32**, i32*, i8*)* @provider_try_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @provider_try_start(%struct.TYPE_6__* %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca [2 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (i32**)*, i32 (i32**)** %19, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = call i32 %20(i32** %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fprintf(i32 %26, i8* %27, i8* %30)
  store i32 -1, i32* %5, align 4
  br label %187

32:                                               ; preds = %4
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call %struct.TYPE_8__* @config_ini_get_section(i32* %33, i8* %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %11, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %86

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %12, align 8
  br label %44

44:                                               ; preds = %81, %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %49, align 8
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 %50(i32* %52, i8* %55, i8* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %47
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32 (i32*)*, i32 (i32*)** %64, align 8
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 %65(i32* %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fprintf(i32 %69, i8* %70, i8* %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @fprintf(i32 %75, i8* %76, i8* %79)
  store i32 -1, i32* %5, align 4
  br label %187

81:                                               ; preds = %47
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %12, align 8
  br label %44

85:                                               ; preds = %44
  br label %86

86:                                               ; preds = %85, %32
  %87 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %87, i8* align 16 bitcast ([2 x i8*]* @__const.provider_try_start.manual_keys to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %160, %86
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %164

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 58)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %15, align 8
  store i8 0, i8* %97, align 1
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %9, align 8
  store i8* %100, i8** %16, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i8* @strchr(i8* %101, i8 signext 61)
  store i8* %102, i8** %17, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %113, 2
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %16, align 8
  %120 = load i8*, i8** %9, align 8
  store i8* %120, i8** %17, align 8
  br label %126

121:                                              ; preds = %111, %105
  %122 = load i32, i32* @stderr, align 4
  %123 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @fprintf(i32 %122, i8* %123, i8* %124)
  store i32 -1, i32* %5, align 4
  br label %187

126:                                              ; preds = %115
  br label %130

127:                                              ; preds = %99
  %128 = load i8*, i8** %17, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %17, align 8
  store i8 0, i8* %128, align 1
  br label %130

130:                                              ; preds = %127, %126
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %132, align 8
  %134 = load i32**, i32*** %7, align 8
  %135 = load i32*, i32** %134, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = call i32 %133(i32* %135, i8* %136, i8* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %130
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i32 (i32*)*, i32 (i32*)** %143, align 8
  %145 = load i32**, i32*** %7, align 8
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 %144(i32* %146)
  %148 = load i32, i32* @stderr, align 4
  %149 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @fprintf(i32 %148, i8* %149, i8* %152)
  %154 = load i32, i32* @stderr, align 4
  %155 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @fprintf(i32 %154, i8* %155, i8* %158)
  store i32 -1, i32* %5, align 4
  br label %187

160:                                              ; preds = %130
  %161 = load i8*, i8** %15, align 8
  store i8* %161, i8** %9, align 8
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %88

164:                                              ; preds = %88
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32 (i32*)*, i32 (i32*)** %166, align 8
  %168 = load i32**, i32*** %7, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 %167(i32* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %164
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i32 (i32*)*, i32 (i32*)** %175, align 8
  %177 = load i32**, i32*** %7, align 8
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 %176(i32* %178)
  %180 = load i32, i32* @stderr, align 4
  %181 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @fprintf(i32 %180, i8* %181, i8* %184)
  store i32 -1, i32* %5, align 4
  br label %187

186:                                              ; preds = %164
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %186, %173, %141, %121, %62, %25
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_8__* @config_ini_get_section(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
