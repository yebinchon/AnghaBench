; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeIdxRowid.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeIdxRowid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }

@SQLITE_MAX_U32 = common dso_local global i32 0, align 4
@sqlite3SmallTypeSizes = common dso_local global i32* null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeIdxRowid(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @sqlite3BtreeCursorIsValid(i32* %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @sqlite3BtreePayloadSize(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SQLITE_MAX_U32, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @sqlite3VdbeMemInit(%struct.TYPE_8__* %13, i32* %27, i32 0)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sqlite3VdbeMemFromBtree(i32* %29, i32 0, i32 %30, %struct.TYPE_8__* %13)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %177

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @getVarint32(i32* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 3
  %43 = zext i1 %42 to i32
  %44 = call i32 @testcase(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @testcase(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 2147483647
  %53 = zext i1 %52 to i32
  %54 = call i32 @testcase(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %67, label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ugt i32 %63, %65
  br label %67

67:                                               ; preds = %62, %36
  %68 = phi i1 [ true, %36 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %169

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @getVarint32(i32* %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @testcase(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i32
  %89 = call i32 @testcase(i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 3
  %92 = zext i1 %91 to i32
  %93 = call i32 @testcase(i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 4
  %96 = zext i1 %95 to i32
  %97 = call i32 @testcase(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 5
  %100 = zext i1 %99 to i32
  %101 = call i32 @testcase(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 6
  %104 = zext i1 %103 to i32
  %105 = call i32 @testcase(i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 8
  %108 = zext i1 %107 to i32
  %109 = call i32 @testcase(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 9
  %112 = zext i1 %111 to i32
  %113 = call i32 @testcase(i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %122, label %116

116:                                              ; preds = %73
  %117 = load i32, i32* %11, align 4
  %118 = icmp sgt i32 %117, 9
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 7
  br label %122

122:                                              ; preds = %119, %116, %73
  %123 = phi i1 [ true, %116 ], [ true, %73 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %169

128:                                              ; preds = %122
  %129 = load i32*, i32** @sqlite3SmallTypeSizes, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %12, align 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %136, %137
  %139 = icmp eq i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @testcase(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = icmp slt i32 %143, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %128
  br label %169

152:                                              ; preds = %128
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @sqlite3VdbeSerialGet(i32* %160, i32 %161, %struct.TYPE_8__* %14)
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %7, align 8
  store i32 %165, i32* %166, align 4
  %167 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_8__* %13)
  %168 = load i32, i32* @SQLITE_OK, align 4
  store i32 %168, i32* %4, align 4
  br label %177

169:                                              ; preds = %151, %127, %72
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @testcase(i32 %173)
  %175 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_8__* %13)
  %176 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %169, %152, %34
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeCursorIsValid(i32*) #1

declare dso_local i32 @sqlite3BtreePayloadSize(i32*) #1

declare dso_local i32 @sqlite3VdbeMemInit(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMemFromBtree(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @getVarint32(i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sqlite3VdbeSerialGet(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
