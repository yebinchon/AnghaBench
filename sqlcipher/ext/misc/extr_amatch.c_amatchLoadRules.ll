; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchLoadRules.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchLoadRules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: %s has %d columns, expected 4\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i8**)* @amatchLoadRules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amatchLoadRules(i32* %0, %struct.TYPE_8__* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca [15 x %struct.TYPE_9__*], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i8** %2, i8*** %6, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %27, i32* %7, align 4
  br label %95

28:                                               ; preds = %3
  store i32* null, i32** %11, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @sqlite3_prepare_v2(i32* %29, i8* %30, i32 -1, i32** %11, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @sqlite3_errmsg(i32* %39)
  %41 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  br label %86

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @sqlite3_column_count(i32* %44)
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @sqlite3_column_count(i32* %54)
  %56 = call i8* (i8*, i32, i32, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53, i32 %55)
  %57 = load i8**, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %58, i32* %7, align 4
  br label %85

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* @SQLITE_ROW, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i64 @sqlite3_step(i32* %66)
  %68 = icmp eq i64 %65, %67
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  br i1 %70, label %71, label %84

71:                                               ; preds = %69
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = call i32 @amatchLoadOneRule(%struct.TYPE_8__* %72, i32* %73, %struct.TYPE_9__** %12, i8** %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = icmp ne %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %9, align 8
  br label %83

83:                                               ; preds = %78, %71
  br label %60

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %47
  br label %86

86:                                               ; preds = %85, %35
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @sqlite3_finalize(i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %86
  br label %95

95:                                               ; preds = %94, %26
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @sqlite3_free(i8* %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %187

101:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %110, %101
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %104, 15
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %108
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %109, align 8
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %102

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %149, %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %14, align 8
  %116 = icmp ne %struct.TYPE_9__* %115, null
  br i1 %116, label %117, label %160

117:                                              ; preds = %114
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %9, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %122, align 8
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %146, %117
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = icmp ne %struct.TYPE_9__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* %13, align 4
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %131, 14
  br label %133

133:                                              ; preds = %129, %123
  %134 = phi i1 [ false, %123 ], [ %132, %129 ]
  br i1 %134, label %135, label %149

135:                                              ; preds = %133
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %137
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %141 = call i8* @amatchMergeRules(%struct.TYPE_9__* %139, %struct.TYPE_9__* %140)
  %142 = bitcast i8* %141 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %14, align 8
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %144
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %145, align 8
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %13, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %123

149:                                              ; preds = %133
  %150 = load i32, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %155 = call i8* @amatchMergeRules(%struct.TYPE_9__* %153, %struct.TYPE_9__* %154)
  %156 = bitcast i8* %155 to %struct.TYPE_9__*
  %157 = load i32, i32* %13, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %158
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %159, align 8
  br label %114

160:                                              ; preds = %114
  %161 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 16
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %14, align 8
  store i32 1, i32* %13, align 4
  br label %163

163:                                              ; preds = %175, %160
  %164 = load i32, i32* %13, align 4
  %165 = zext i32 %164 to i64
  %166 = icmp ult i64 %165, 15
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load i32, i32* %13, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %15, i64 0, i64 %169
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %173 = call i8* @amatchMergeRules(%struct.TYPE_9__* %171, %struct.TYPE_9__* %172)
  %174 = bitcast i8* %173 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %174, %struct.TYPE_9__** %14, align 8
  br label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %13, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %163

178:                                              ; preds = %163
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %183 = call i8* @amatchMergeRules(%struct.TYPE_9__* %181, %struct.TYPE_9__* %182)
  %184 = bitcast i8* %183 to %struct.TYPE_9__*
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store %struct.TYPE_9__* %184, %struct.TYPE_9__** %186, align 8
  br label %197

187:                                              ; preds = %95
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = icmp eq %struct.TYPE_9__* %190, null
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store %struct.TYPE_9__* %194, %struct.TYPE_9__** %196, align 8
  br label %197

197:                                              ; preds = %187, %178
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @amatchLoadOneRule(%struct.TYPE_8__*, i32*, %struct.TYPE_9__**, i8**) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @amatchMergeRules(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
