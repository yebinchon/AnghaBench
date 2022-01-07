; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3AlterBeginAddColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3AlterBeginAddColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i64, i32, i32, i32, %struct.TYPE_29__*, i32, i64 }
%struct.TYPE_29__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"virtual tables may not be altered\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot add a column to a view\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"sqlite_altertab_%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3AlterBeginAddColumn(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %10, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %18 = icmp eq %struct.TYPE_26__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %22 = call i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_25__* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %212

29:                                               ; preds = %2
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call %struct.TYPE_26__* @sqlite3LocateTableItem(%struct.TYPE_28__* %30, i32 0, i32* %34)
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %6, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %37 = icmp ne %struct.TYPE_26__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %212

39:                                               ; preds = %29
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %41 = call i64 @IsVirtual(%struct.TYPE_26__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %45 = call i32 @sqlite3ErrorMsg(%struct.TYPE_28__* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %212

46:                                               ; preds = %39
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %53 = call i32 @sqlite3ErrorMsg(%struct.TYPE_28__* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %212

54:                                               ; preds = %46
  %55 = load i64, i64* @SQLITE_OK, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %58 = call i64 @isAlterableTable(%struct.TYPE_28__* %56, %struct.TYPE_26__* %57)
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %212

61:                                               ; preds = %54
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_25__* %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %74 = call i64 @sqlite3DbMallocZero(%struct.TYPE_25__* %73, i32 48)
  %75 = inttoptr i64 %74 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %75, %struct.TYPE_26__** %5, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = icmp ne %struct.TYPE_26__* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %61
  br label %212

79:                                               ; preds = %61
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  store %struct.TYPE_26__* %80, %struct.TYPE_26__** %82, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sdiv i32 %99, 8
  %101 = mul nsw i32 %100, 8
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %79
  %109 = load i32, i32* %9, align 4
  %110 = srem i32 %109, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = icmp slt i32 %117, 8
  br label %119

119:                                              ; preds = %112, %108, %79
  %120 = phi i1 [ false, %108 ], [ false, %79 ], [ %118, %112 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 24, %125
  %127 = trunc i64 %126 to i32
  %128 = call i64 @sqlite3DbMallocZero(%struct.TYPE_25__* %123, i32 %127)
  %129 = inttoptr i64 %128 to %struct.TYPE_29__*
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 4
  store %struct.TYPE_29__* %129, %struct.TYPE_29__** %131, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @sqlite3MPrintf(%struct.TYPE_25__* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %140, align 8
  %142 = icmp ne %struct.TYPE_29__* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %119
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143, %119
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @assert(i32 %151)
  br label %212

153:                                              ; preds = %143
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %155, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %158, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 24, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memcpy(%struct.TYPE_29__* %156, %struct.TYPE_29__* %159, i32 %165)
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %191, %153
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %194

173:                                              ; preds = %167
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i64 %178
  store %struct.TYPE_29__* %179, %struct.TYPE_29__** %11, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @sqlite3DbStrDup(%struct.TYPE_25__* %180, i32 %183)
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 0
  store i64 0, i64* %190, align 8
  br label %191

191:                                              ; preds = %173
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %167

194:                                              ; preds = %167
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %194, %148, %78, %60, %51, %43, %38, %28
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %215 = call i32 @sqlite3SrcListDelete(%struct.TYPE_25__* %213, %struct.TYPE_27__* %214)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @sqlite3LocateTableItem(%struct.TYPE_28__*, i32, i32*) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_28__*, i8*) #1

declare dso_local i64 @isAlterableTable(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3MPrintf(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @sqlite3DbStrDup(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
