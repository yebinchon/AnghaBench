; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_options.c_optionInit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_options.c_optionInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@opt_mod = common dso_local global i8* null, align 8
@opt_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@opt_logFile = common dso_local global i32 0, align 4
@opt_7z = common dso_local global i32 0, align 4
@CMD_7Z = common dso_local global i8* null, align 8
@opt_SourcesPath = common dso_local global i32 0, align 4
@SOURCES_ENV = common dso_local global i32 0, align 4
@revinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DEF_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Trunk build revision: %d\0A\00", align 1
@opt_scanned = common dso_local global i32 0, align 4
@opt_help = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@opt_Pipe = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"opt_scanned=[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optionInit(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** @opt_mod, align 8
  %8 = load i32, i32* @opt_dir, align 4
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @opt_logFile, align 4
  %11 = call i32 @strcpy(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @opt_7z, align 4
  %13 = load i8*, i8** @CMD_7Z, align 8
  %14 = call i32 @strcpy(i32 %12, i8* %13)
  %15 = load i32, i32* @opt_SourcesPath, align 4
  %16 = call i32 @strcpy(i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @SOURCES_ENV, align 4
  %18 = call i8* @getenv(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @opt_SourcesPath, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strcpy(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = call i32 @getRevision(i32* null, i32 1)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revinfo, i32 0, i32 2), align 4
  %26 = load i32, i32* @DEF_RANGE, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revinfo, i32 0, i32 1), align 4
  %27 = load i32, i32* @opt_dir, align 4
  %28 = call i32 @getTBRevision(i32 %27)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revinfo, i32 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revinfo, i32 0, i32 0), align 4
  %30 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @opt_scanned, align 4
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %54, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 63
  br i1 %53, label %54, label %58

54:                                               ; preds = %46, %24
  %55 = load i32, i32* @opt_help, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @opt_help, align 4
  %57 = call i32 @usage(i32 1)
  store i32 -1, i32* %3, align 4
  br label %147

58:                                               ; preds = %46, %38, %35
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %141, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %144

63:                                               ; preds = %59
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %73, label %131

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %131

78:                                               ; preds = %73
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %130 [
    i32 100, label %87
    i32 76, label %96
    i32 108, label %97
    i32 80, label %106
    i32 122, label %121
  ]

87:                                               ; preds = %78
  %88 = load i32, i32* @opt_dir, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strcpy(i32 %88, i8* %94)
  br label %130

96:                                               ; preds = %78
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** @opt_mod, align 8
  br label %97

97:                                               ; preds = %78, %96
  %98 = load i32, i32* @opt_logFile, align 4
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcpy(i32 %98, i8* %104)
  br label %130

106:                                              ; preds = %78
  %107 = load i32, i32* @opt_Pipe, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @LINESIZE, align 4
  %111 = call i32 @malloc(i32 %110)
  store i32 %111, i32* @opt_Pipe, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @opt_Pipe, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcpy(i32 %113, i8* %119)
  br label %130

121:                                              ; preds = %78
  %122 = load i32, i32* @opt_7z, align 4
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strcpy(i32 %122, i8* %128)
  br label %130

130:                                              ; preds = %78, %121, %112, %97, %87
  br label %131

131:                                              ; preds = %130, %73, %63
  %132 = load i32, i32* @opt_scanned, align 4
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strcat(i32 %132, i8* %137)
  %139 = load i32, i32* @opt_scanned, align 4
  %140 = call i32 @strcat(i32 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %59

144:                                              ; preds = %59
  %145 = load i32, i32* @opt_scanned, align 4
  %146 = call i32 @l2l_dbg(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %144, %54
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @getRevision(i32*, i32) #1

declare dso_local i32 @getTBRevision(i32) #1

declare dso_local i32 @l2l_dbg(i32, i8*, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
