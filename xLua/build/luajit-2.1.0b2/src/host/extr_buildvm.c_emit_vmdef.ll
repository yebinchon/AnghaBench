; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_buildvm.c_emit_vmdef.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_buildvm.c_emit_vmdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"-- This is a generated file. DO NOT EDIT!\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"return {\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bcnames = \22\00", align 1
@bc_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%-6s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\22,\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"irnames = \22\00", align 1
@ir_names = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"irfpm = { [0]=\00", align 1
@irfpm_names = common dso_local global i64* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"\22%s\22, \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"},\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"irfield = { [0]=\00", align 1
@irfield_names = common dso_local global i64* null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"ircall = {\0A[0]=\00", align 1
@ircall_names = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"\22%s\22,\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"traceerr = {\0A[0]=\00", align 1
@trace_errors = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @emit_vmdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_vmdef(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i8**, i8*** @bc_names, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8**, i8*** @bc_names, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %64, %38
  %48 = load i8**, i8*** @ir_names, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8**, i8*** @ir_names, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %47

67:                                               ; preds = %47
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %95, %67
  %77 = load i64*, i64** @irfpm_names, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %88 = load i64*, i64** @irfpm_names, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @lower(i8* %87, i64 %92)
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %134, %98
  %108 = load i64*, i64** @irfield_names, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %116 = load i64*, i64** @irfield_names, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @lower(i8* %115, i64 %120)
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %123 = call i8* @strchr(i8* %122, i8 signext 95)
  store i8* %123, i8** %5, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i8*, i8** %5, align 8
  store i8 46, i8* %127, align 1
  br label %128

128:                                              ; preds = %126, %114
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %107

137:                                              ; preds = %107
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %163, %137
  %147 = load i8**, i8*** @ircall_names, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8**, i8*** @ircall_names, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %146

166:                                              ; preds = %146
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %192, %166
  %176 = load i8**, i8*** @trace_errors, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8**, i8*** @trace_errors, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %182
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %175

195:                                              ; preds = %175
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @lower(i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
