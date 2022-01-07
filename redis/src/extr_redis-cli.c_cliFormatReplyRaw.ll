; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliFormatReplyRaw.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliFormatReplyRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i64, %struct.TYPE_4__** }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"<endsession>\00", align 1
@OUTPUT_STANDARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"(true)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(false)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Unknown reply type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*)* @cliFormatReplyRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cliFormatReplyRaw(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = call i8* (...) @sdsempty()
  store i8* %6, i8** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %166 [
    i32 131, label %10
    i32 134, label %11
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
    i32 136, label %62
    i32 133, label %71
    i32 135, label %77
    i32 137, label %83
    i32 132, label %116
  ]

10:                                               ; preds = %1
  br label %173

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @sdscatlen(i8* %12, i8* %15, i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @sdscatlen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %21, i8** %3, align 8
  br label %173

22:                                               ; preds = %1, %1, %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %40 = load i32, i32* @OUTPUT_STANDARD, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 8
  %41 = call i32 (...) @cliRefreshPrompt()
  br label %51

42:                                               ; preds = %30
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @sdsCatColorizedLdbReply(i8* %43, i8* %46, i32 %49)
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %42, %39
  br label %61

52:                                               ; preds = %27, %22
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @sdscatlen(i8* %53, i8* %56, i32 %59)
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %52, %51
  br label %173

62:                                               ; preds = %1
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %70 = call i8* @sdscat(i8* %63, i8* %69)
  store i8* %70, i8** %3, align 8
  br label %173

71:                                               ; preds = %1
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @sdscatprintf(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  store i8* %76, i8** %3, align 8
  br label %173

77:                                               ; preds = %1
  %78 = load i8*, i8** %3, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @sdscatprintf(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  store i8* %82, i8** %3, align 8
  br label %173

83:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %84

84:                                               ; preds = %112, %83
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = load i64, i64* %5, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %3, align 8
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 8
  %96 = call i8* @sdscat(i8* %94, i8* %95)
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i8* @cliFormatReplyRaw(%struct.TYPE_4__* %103)
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @sdslen(i8* %107)
  %109 = call i8* @sdscatlen(i8* %105, i8* %106, i32 %108)
  store i8* %109, i8** %3, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @sdsfree(i8* %110)
  br label %112

112:                                              ; preds = %97
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %5, align 8
  br label %84

115:                                              ; preds = %84
  br label %173

116:                                              ; preds = %1
  store i64 0, i64* %5, align 8
  br label %117

117:                                              ; preds = %162, %116
  %118 = load i64, i64* %5, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = load i64, i64* %5, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i8*, i8** %3, align 8
  %128 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 8
  %129 = call i8* @sdscat(i8* %127, i8* %128)
  store i8* %129, i8** %3, align 8
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %133, i64 %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = call i8* @cliFormatReplyRaw(%struct.TYPE_4__* %136)
  store i8* %137, i8** %4, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @sdslen(i8* %140)
  %142 = call i8* @sdscatlen(i8* %138, i8* %139, i32 %141)
  store i8* %142, i8** %3, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 @sdsfree(i8* %143)
  %145 = load i8*, i8** %3, align 8
  %146 = call i8* @sdscatlen(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i8* %146, i8** %3, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %148, align 8
  %150 = load i64, i64* %5, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %149, i64 %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = call i8* @cliFormatReplyRaw(%struct.TYPE_4__* %153)
  store i8* %154, i8** %4, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = call i32 @sdslen(i8* %157)
  %159 = call i8* @sdscatlen(i8* %155, i8* %156, i32 %158)
  store i8* %159, i8** %3, align 8
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @sdsfree(i8* %160)
  br label %162

162:                                              ; preds = %130
  %163 = load i64, i64* %5, align 8
  %164 = add i64 %163, 2
  store i64 %164, i64* %5, align 8
  br label %117

165:                                              ; preds = %117
  br label %173

166:                                              ; preds = %1
  %167 = load i32, i32* @stderr, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = call i32 @exit(i32 1) #3
  unreachable

173:                                              ; preds = %165, %115, %77, %71, %62, %61, %11, %10
  %174 = load i8*, i8** %3, align 8
  ret i8* %174
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @cliRefreshPrompt(...) #1

declare dso_local i8* @sdsCatColorizedLdbReply(i8*, i8*, i32) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i8*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
