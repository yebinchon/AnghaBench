; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/touch/extr_touch.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/touch/extr_touch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i8*, i8* }
%struct.utimbuf = type { i8*, i8* }

@__progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"acfmr:t:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.utimbuf, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @__progname, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %23 = call i32 @time(i8** %22)
  br label %24

24:                                               ; preds = %47, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %45 [
    i32 97, label %32
    i32 99, label %33
    i32 102, label %34
    i32 109, label %35
    i32 114, label %36
    i32 116, label %40
    i32 63, label %44
  ]

32:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %47

33:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %47

34:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %47

35:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %47

36:                                               ; preds = %30
  store i32 1, i32* %16, align 4
  %37 = load i32, i32* @optarg, align 4
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %39 = call i32 @stime_file(i32 %37, i8** %38)
  br label %47

40:                                               ; preds = %30
  store i32 1, i32* %16, align 4
  %41 = load i32, i32* @optarg, align 4
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %43 = call i32 @stime_arg1(i32 %41, i8** %42)
  br label %47

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %30, %44
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %40, %36, %35, %34, %33, %32
  br label %24

48:                                               ; preds = %24
  %49 = load i64, i64* @optind, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @optind, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54
  store i8** %56, i8*** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %59, %48
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strtol(i8* %72, i8** %17, i32 10)
  %74 = load i8*, i8** %17, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %74 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %69
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %101

92:                                               ; preds = %89, %86
  store i32 1, i32* %16, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 10
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %100 = call i32 @stime_arg2(i8* %95, i32 %98, i8** %99)
  br label %101

101:                                              ; preds = %92, %89, %69
  br label %102

102:                                              ; preds = %101, %66, %63
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %107 = load i8*, i8** %106, align 16
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i8**, i8*** %5, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %109
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %204, %115
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %207

120:                                              ; preds = %116
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @stat(i8* %122, %struct.stat* %6)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %155, label %128

128:                                              ; preds = %125
  %129 = load i8**, i8*** %5, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @O_WRONLY, align 4
  %132 = load i32, i32* @O_CREAT, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @DEFFILEMODE, align 4
  %135 = call i32 @_open(i8* %130, i32 %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %146, label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = call i64 @fstat(i32 %139, %struct.stat* %6)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %13, align 4
  %144 = call i64 @_close(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142, %138, %128
  store i32 1, i32* %15, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %148)
  br label %204

150:                                              ; preds = %142
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  br label %204

154:                                              ; preds = %150
  br label %156

155:                                              ; preds = %125
  br label %204

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %156, %120
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %162, i8** %163, align 16
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %169, i8** %170, align 8
  br label %171

171:                                              ; preds = %167, %164
  %172 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %173 = load i8*, i8** %172, align 16
  %174 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %18, i32 0, i32 1
  store i8* %173, i8** %174, align 8
  %175 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %18, i32 0, i32 0
  store i8* %176, i8** %177, align 8
  %178 = load i8**, i8*** %5, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @utime(i8* %179, %struct.utimbuf* %18)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %171
  br label %204

183:                                              ; preds = %171
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  store i32 1, i32* %15, align 4
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = load i8**, i8*** %5, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @utime(i8* %192, %struct.utimbuf* null)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  br label %204

196:                                              ; preds = %190
  %197 = load i8**, i8*** %5, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i64 @rw(i8* %198, %struct.stat* %6, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  store i32 1, i32* %15, align 4
  br label %203

203:                                              ; preds = %202, %196
  br label %204

204:                                              ; preds = %203, %195, %182, %155, %153, %146
  %205 = load i8**, i8*** %5, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i32 1
  store i8** %206, i8*** %5, align 8
  br label %116

207:                                              ; preds = %116
  %208 = load i32, i32* %15, align 4
  ret i32 %208
}

declare dso_local i32 @time(i8**) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @stime_file(i32, i8**) #1

declare dso_local i32 @stime_arg1(i32, i8**) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @stime_arg2(i8*, i32, i8**) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @_close(i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @utime(i8*, %struct.utimbuf*) #1

declare dso_local i64 @rw(i8*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
