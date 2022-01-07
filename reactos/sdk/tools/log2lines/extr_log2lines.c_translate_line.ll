; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_translate_line.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_translate_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@opt_undo = common dso_local global i64 0, align 8
@NAMESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"| %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"L2L-\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"S---\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"R---\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<%s %x%c\00", align 1
@opt_mark = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@opt_redo = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"%s<%s:%x (%s)>%s\00", align 1
@summ = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"%s<%s:%x>%s\00", align 1
@opt_Mark = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@LINESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @translate_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate_line(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %216

23:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @remove_mark(i8* %24)
  store i8* %25, i8** %15, align 8
  %26 = load i64, i64* @opt_undo, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load i32, i32* @NAMESIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 (i8*, i8*, i8*, ...) @sscanf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %58

36:                                               ; preds = %28
  %37 = getelementptr inbounds i8, i8* %32, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i64 @atoi(i8* %32)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %47, %44, %41, %36
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i8*, i8** %15, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 58)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %199

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  store i8 32, i8* %66, align 1
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 (i8*, i8*, i8*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %68, i32* %9, i8* %16)
  store i32 %69, i32* %10, align 4
  %70 = load i64, i64* @opt_undo, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %151

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %150

75:                                               ; preds = %72
  %76 = load i8, i8* %16, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %150

79:                                               ; preds = %75
  %80 = load i8*, i8** %15, align 8
  %81 = call i8* @strchr(i8* %80, i8 signext 62)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  br label %89

87:                                               ; preds = %79
  %88 = load i8*, i8** %13, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i8* [ %86, %84 ], [ %88, %87 ]
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 41
  br i1 %98, label %99, label %140

99:                                               ; preds = %93
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 62
  br i1 %104, label %105, label %140

105:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  store i8* %107, i8** %13, align 8
  %108 = load i64, i64* @opt_mark, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %111, i8** %14, align 8
  %112 = load i64, i64* @opt_redo, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %105
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @translate_file(i8* %115, i32 %116, i8* %117)
  store i32 %118, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %114
  %121 = load i32*, i32** %5, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 (i32*, i8*, i8*, i8*, ...) @log(i32* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %122, i8* %123, i32 %124, i8* %125, i8* %126)
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 4), align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 4), align 4
  br label %139

130:                                              ; preds = %114, %105
  %131 = load i32*, i32** %5, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 (i32*, i8*, i8*, i8*, ...) @log(i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %132, i8* %133, i32 %134, i8* %135)
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 3), align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 3), align 4
  br label %139

139:                                              ; preds = %130, %120
  br label %147

140:                                              ; preds = %99, %93, %89
  %141 = load i64, i64* @opt_Mark, align 8
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %144, i8** %14, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 1), align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 1), align 4
  br label %147

147:                                              ; preds = %140, %139
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 0), align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 0), align 4
  br label %150

150:                                              ; preds = %147, %75, %72
  br label %151

151:                                              ; preds = %150, %65
  %152 = load i64, i64* @opt_undo, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, i64* @opt_redo, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %198

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %10, align 4
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %197

160:                                              ; preds = %157
  %161 = load i8, i8* %16, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 62
  br i1 %163, label %164, label %197

164:                                              ; preds = %160
  %165 = load i8*, i8** %15, align 8
  %166 = call i8* @strchr(i8* %165, i8 signext 62)
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %13, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i8*, i8** %8, align 8
  %171 = call i32 @translate_file(i8* %168, i32 %169, i8* %170)
  store i32 %171, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %164
  %174 = load i64, i64* @opt_mark, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %177, i8** %14, align 8
  %178 = load i32*, i32** %5, align 8
  %179 = load i8*, i8** %14, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = call i32 (i32*, i8*, i8*, i8*, ...) @log(i32* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %179, i8* %180, i32 %181, i8* %182, i8* %183)
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 2), align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 2), align 4
  br label %194

187:                                              ; preds = %164
  %188 = load i64, i64* @opt_Mark, align 8
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %191, i8** %14, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 1), align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 1), align 4
  br label %194

194:                                              ; preds = %187, %173
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 0), align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summ, i32 0, i32 0), align 4
  br label %197

197:                                              ; preds = %194, %160, %157
  br label %198

198:                                              ; preds = %197, %154
  br label %199

199:                                              ; preds = %198, %60
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i8*, i8** %12, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i8*, i8** %12, align 8
  store i8 58, i8* %206, align 1
  br label %207

207:                                              ; preds = %205, %202
  %208 = load i32*, i32** %5, align 8
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = call i32 (i32*, i8*, i8*, i8*, ...) @log(i32* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %209, i8* %210)
  br label %212

212:                                              ; preds = %207, %199
  %213 = load i8*, i8** %6, align 8
  %214 = load i32, i32* @LINESIZE, align 4
  %215 = call i32 @memset(i8* %213, i8 signext 0, i32 %214)
  br label %216

216:                                              ; preds = %212, %22
  ret void
}

declare dso_local i8* @remove_mark(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @translate_file(i8*, i32, i8*) #1

declare dso_local i32 @log(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
