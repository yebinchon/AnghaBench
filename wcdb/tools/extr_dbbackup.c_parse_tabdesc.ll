; ModuleID = '/home/carl/AnghaBench/wcdb/tools/extr_dbbackup.c_parse_tabdesc.c'
source_filename = "/home/carl/AnghaBench/wcdb/tools/extr_dbbackup.c_parse_tabdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@g_tabdesc_buffer = common dso_local global i8* null, align 8
@g_tabdesc = common dso_local global %struct.TYPE_3__* null, align 8
@g_num_tabdesc = common dso_local global i32 0, align 4
@MMBAK_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot parse table descriptor.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_tabdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_tabdesc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %132

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fseek(i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @ftell(i32* %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i32 @fseek(i32* %24, i32 0, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @malloc(i64 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @g_tabdesc_buffer, align 8
  %30 = load i8*, i8** @g_tabdesc_buffer, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  br label %132

33:                                               ; preds = %16
  %34 = load i8*, i8** @g_tabdesc_buffer, align 8
  store i8* %34, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %84, %33
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @feof(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ferror(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** @g_tabdesc_buffer, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %4, align 8
  %50 = icmp slt i64 %48, %49
  br label %51

51:                                               ; preds = %43, %39, %35
  %52 = phi i1 [ false, %39 ], [ false, %35 ], [ %50, %43 ]
  br i1 %52, label %53, label %85

53:                                               ; preds = %51
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** @g_tabdesc_buffer, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8*, i8** %5, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %3, align 8
  %64 = call i8* @fgets(i8* %54, i32 %62, i32* %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %82, %67
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  %73 = load i8, i8* %71, align 1
  store i8 %73, i8* %8, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  store i8 0, i8* %81, align 1
  br label %83

82:                                               ; preds = %75
  br label %70

83:                                               ; preds = %79, %70
  br label %84

84:                                               ; preds = %83, %53
  br label %35

85:                                               ; preds = %51
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @fclose(i32* %86)
  store i32* null, i32** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @calloc(i32 %88, i32 16)
  %90 = inttoptr i64 %89 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** @g_tabdesc, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tabdesc, align 8
  %92 = icmp ne %struct.TYPE_3__* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %132

94:                                               ; preds = %85
  %95 = load i8*, i8** @g_tabdesc_buffer, align 8
  store i8* %95, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %127, %94
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %96
  %101 = load i8*, i8** %5, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tabdesc, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i8* %101, i8** %106, align 8
  br label %107

107:                                              ; preds = %125, %100
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  %110 = load i8, i8* %108, align 1
  store i8 %110, i8* %10, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i8, i8* %10, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 124
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tabdesc, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  br label %125

125:                                              ; preds = %116, %112
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %96

130:                                              ; preds = %96
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* @g_num_tabdesc, align 4
  ret void

132:                                              ; preds = %93, %32, %15
  %133 = load i32, i32* @MMBAK_LOG_ERROR, align 4
  %134 = call i32 @print_log(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32*, i32** %3, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @fclose(i32* %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @print_log(i32, i8*) #1

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
