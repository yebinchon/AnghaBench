; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexSubOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexSubOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*, i32, i32*)*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@gMultiplex = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"multiplexor.xAccess failure on %s\00", align 1
@SQLITE_IOERR_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"multiplexor.xOpen failure on %s\00", align 1
@SQLITE_FULL = common dso_local global i32 0, align 4
@SQLITE_MULTIPLEX_JOURNAL_8_3_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, i32*, i32*, i32)* @multiplexSubOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @multiplexSubOpen(%struct.TYPE_11__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gMultiplex, i32 0, i32 0), align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %13, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @multiplexSubFilename(%struct.TYPE_11__* %17, i32 %18)
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %168

25:                                               ; preds = %5
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %168

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %106

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %105

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32* null, i32** %6, align 8
  br label %170

60:                                               ; preds = %49
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_10__*, i32, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32, i32*)** %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %74 = call i32 %63(%struct.TYPE_10__* %64, i32 %72, i32 %73, i32* %15)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %60
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %79, %60
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @sqlite3_log(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %86, %82
  store i32* null, i32** %6, align 8
  br label %170

99:                                               ; preds = %79
  %100 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %48
  br label %106

106:                                              ; preds = %105, %41
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32* @sqlite3_malloc64(i32 %109)
  store i32* %110, i32** %12, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @SQLITE_IOERR_NOMEM, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  store i32* null, i32** %6, align 8
  br label %170

116:                                              ; preds = %106
  %117 = load i32*, i32** %12, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32* %117, i32** %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32 (%struct.TYPE_10__*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*, i32, i32*)** %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 %127(%struct.TYPE_10__* %128, i32 %136, i32* %137, i32 %138, i32* %139)
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SQLITE_OK, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %116
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @sqlite3_log(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %12, align 8
  %159 = call i32 @sqlite3_free(i32* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  store i32* null, i32** %6, align 8
  br label %170

167:                                              ; preds = %116
  br label %168

168:                                              ; preds = %167, %25, %5
  %169 = load i32*, i32** %12, align 8
  store i32* %169, i32** %6, align 8
  br label %170

170:                                              ; preds = %168, %146, %113, %98, %59
  %171 = load i32*, i32** %6, align 8
  ret i32* %171
}

declare dso_local i32 @multiplexSubFilename(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32) #1

declare dso_local i32* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
