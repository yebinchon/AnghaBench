; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_offsets.c_ofstRootAndColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_offsets.c_ofstRootAndColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64, i8* }

@.str = private unnamed_addr constant [31 x i8] c"cannot open database file \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"SELECT rootpage FROM sqlite_master WHERE name=%Q\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: [%s]\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot find table [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"PRAGMA table_info(%Q)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s: [%s}\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"no such column: %s.%s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"PRAGMA page_size\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot find page size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, i8*)* @ofstRootAndColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofstRootAndColumn(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %171

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @sqlite3_open(i8* %20, i32** %9)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %168

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i8* %30, i8** %11, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @sqlite3_prepare_v2(i32* %31, i8* %32, i32 -1, i32** %10, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @sqlite3_errmsg(i32* %38)
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @sqlite3_free(i8* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %168

50:                                               ; preds = %42
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @sqlite3_step(i32* %51)
  %53 = load i64, i64* @SQLITE_ROW, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @sqlite3_finalize(i32* %59)
  br label %168

61:                                               ; preds = %50
  %62 = load i32*, i32** %10, align 8
  %63 = call i8* @sqlite3_column_int(i32* %62, i32 0)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @sqlite3_finalize(i32* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  store i8* %71, i8** %11, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @sqlite3_prepare_v2(i32* %72, i8* %73, i32 -1, i32** %10, i32 0)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @sqlite3_errmsg(i32* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %61
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @sqlite3_free(i8* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %168

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %118, %91
  %93 = load i32*, i32** %10, align 8
  %94 = call i64 @sqlite3_step(i32* %93)
  %95 = load i64, i64* @SQLITE_ROW, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = call i8* @sqlite3_column_text(i32* %98, i32 1)
  store i8* %99, i8** %13, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = call i64 @sqlite3_strnicmp(i8* %106, i8* %107, i64 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32*, i32** %10, align 8
  %114 = call i8* @sqlite3_column_int(i32* %113, i32 0)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %119

118:                                              ; preds = %105, %97
  br label %92

119:                                              ; preds = %112, %92
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @sqlite3_finalize(i32* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %128, i8* %129)
  br label %168

131:                                              ; preds = %119
  %132 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i8* %132, i8** %11, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @sqlite3_prepare_v2(i32* %133, i8* %134, i32 -1, i32** %10, i32 0)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @sqlite3_errmsg(i32* %140)
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %141, i8* %142)
  br label %144

144:                                              ; preds = %138, %131
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @sqlite3_free(i8* %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %168

152:                                              ; preds = %144
  %153 = load i32*, i32** %10, align 8
  %154 = call i64 @sqlite3_step(i32* %153)
  %155 = load i64, i64* @SQLITE_ROW, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = call i32 (%struct.TYPE_4__*, i8*, ...) @ofstError(%struct.TYPE_4__* %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %165

160:                                              ; preds = %152
  %161 = load i32*, i32** %10, align 8
  %162 = call i8* @sqlite3_column_int(i32* %161, i32 0)
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @sqlite3_finalize(i32* %166)
  br label %168

168:                                              ; preds = %165, %151, %126, %90, %55, %49, %24
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @sqlite3_close(i32* %169)
  br label %171

171:                                              ; preds = %168, %18
  ret void
}

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @ofstError(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i64) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
