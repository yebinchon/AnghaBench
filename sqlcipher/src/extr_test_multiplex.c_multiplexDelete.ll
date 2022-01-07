; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { {}*, i32 (%struct.TYPE_9__*, i8*, i32, i32*)* }

@gMultiplex = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_IOERR_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_OPEN_WAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @multiplexDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiplexDelete(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gMultiplex, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_9__*, i8*, i32)**
  %17 = load i32 (%struct.TYPE_9__*, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i32)** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 %17(%struct.TYPE_9__* %18, i8* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %147

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 5
  %31 = call i8* @sqlite3_malloc64(i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @SQLITE_IOERR_NOMEM, align 4
  store i32 %35, i32* %7, align 4
  br label %144

36:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @multiplexFilename(i8* %38, i32 %39, i32 %40, i32 %42, i8* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_9__*, i8*, i32, i32*)*, i32 (%struct.TYPE_9__*, i8*, i32, i32*)** %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %51 = call i32 %47(%struct.TYPE_9__* %48, i8* %49, i32 %50, i32* %12)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %37, label %61

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %71, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 1
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i1 [ false, %62 ], [ %68, %66 ]
  br i1 %70, label %71, label %87

71:                                               ; preds = %69
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @multiplexFilename(i8* %72, i32 %73, i32 %74, i32 %76, i8* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = bitcast {}** %80 to i32 (%struct.TYPE_9__*, i8*, i32)**
  %82 = load i32 (%struct.TYPE_9__*, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i32)** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 %82(%struct.TYPE_9__* %83, i8* %84, i32 %85)
  store i32 %86, i32* %7, align 4
  br label %62

87:                                               ; preds = %69
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %143

91:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @multiplexFilename(i8* %93, i32 %94, i32 %95, i32 %97, i8* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_9__*, i8*, i32, i32*)*, i32 (%struct.TYPE_9__*, i8*, i32, i32*)** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %106 = call i32 %102(%struct.TYPE_9__* %103, i8* %104, i32 %105, i32* %12)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %111, %107
  %115 = phi i1 [ false, %107 ], [ %113, %111 ]
  br i1 %115, label %92, label %116

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %126, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @SQLITE_OK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = icmp sgt i32 %122, 1
  br label %124

124:                                              ; preds = %121, %117
  %125 = phi i1 [ false, %117 ], [ %123, %121 ]
  br i1 %125, label %126, label %142

126:                                              ; preds = %124
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %11, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @multiplexFilename(i8* %127, i32 %128, i32 %129, i32 %131, i8* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = bitcast {}** %135 to i32 (%struct.TYPE_9__*, i8*, i32)**
  %137 = load i32 (%struct.TYPE_9__*, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i32)** %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 %137(%struct.TYPE_9__* %138, i8* %139, i32 %140)
  store i32 %141, i32* %7, align 4
  br label %117

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142, %87
  br label %144

144:                                              ; preds = %143, %34
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @sqlite3_free(i8* %145)
  br label %147

147:                                              ; preds = %144, %3
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @multiplexFilename(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
