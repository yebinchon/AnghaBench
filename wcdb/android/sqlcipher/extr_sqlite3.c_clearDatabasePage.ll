; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_clearDatabasePage.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_clearDatabasePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i32, i64, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@PTF_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, i32, i32*)* @clearDatabasePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clearDatabasePage(%struct.TYPE_13__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sqlite3_mutex_held(i32 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = call i64 @btreePagecount(%struct.TYPE_13__* %22)
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %26, i32* %5, align 4
  br label %166

27:                                               ; preds = %4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @getAndInitPage(%struct.TYPE_13__* %28, i64 %29, %struct.TYPE_12__** %10, i32 0, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %166

35:                                               ; preds = %27
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %41, i32* %11, align 4
  br label %160

42:                                               ; preds = %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %80, %42
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i8* @findCell(%struct.TYPE_12__* %55, i32 %56)
  store i8* %57, i8** %12, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i64 @get4byte(i8* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @clearDatabasePage(%struct.TYPE_13__* %63, i64 %65, i32 1, i32* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %160

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %54
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @clearCell(%struct.TYPE_12__* %73, i8* %74, i32* %15)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %160

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %48

83:                                               ; preds = %48
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = call i64 @get4byte(i8* %96)
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @clearDatabasePage(%struct.TYPE_13__* %89, i64 %97, i32 1, i32* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %160

103:                                              ; preds = %88
  br label %133

104:                                              ; preds = %83
  %105 = load i32*, i32** %9, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %132

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* @CORRUPT_DB, align 8
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %112, %107
  %116 = phi i1 [ true, %107 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i32 @testcase(i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %115, %104
  br label %133

133:                                              ; preds = %132, %103
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = call i32 @freePage(%struct.TYPE_12__* %137, i32* %11)
  br label %159

139:                                              ; preds = %133
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @sqlite3PagerWrite(i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i32, i32* @PTF_LEAF, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @zeroPage(%struct.TYPE_12__* %146, i32 %156)
  br label %158

158:                                              ; preds = %145, %139
  br label %159

159:                                              ; preds = %158, %136
  br label %160

160:                                              ; preds = %159, %102, %78, %70, %40
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %164 = call i32 @releasePage(%struct.TYPE_12__* %163)
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %160, %33, %25
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @btreePagecount(%struct.TYPE_13__*) #1

declare dso_local i32 @getAndInitPage(%struct.TYPE_13__*, i64, %struct.TYPE_12__**, i32, i32) #1

declare dso_local i8* @findCell(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @get4byte(i8*) #1

declare dso_local i32 @clearCell(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @freePage(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @zeroPage(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
