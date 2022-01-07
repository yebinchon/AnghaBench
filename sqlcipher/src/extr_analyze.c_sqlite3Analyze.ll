; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_analyze.c_sqlite3Analyze.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_analyze.c_sqlite3Analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_31__ = type { i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@OP_Expire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Analyze(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %6, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %7, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %22 = call i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_28__* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* @SQLITE_OK, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %26 = call i64 @sqlite3ReadSchema(%struct.TYPE_30__* %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %147

29:                                               ; preds = %3
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %31 = icmp ne %struct.TYPE_29__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %34 = icmp eq %struct.TYPE_29__* %33, null
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = icmp eq %struct.TYPE_29__* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %56

52:                                               ; preds = %48
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @analyzeDatabase(%struct.TYPE_30__* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %51
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %42

59:                                               ; preds = %42
  br label %134

60:                                               ; preds = %35
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %68 = call i32 @sqlite3FindDb(%struct.TYPE_28__* %66, %struct.TYPE_29__* %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @analyzeDatabase(%struct.TYPE_30__* %71, i32 %72)
  br label %133

74:                                               ; preds = %65, %60
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %78 = call i32 @sqlite3TwoPartName(%struct.TYPE_30__* %75, %struct.TYPE_29__* %76, %struct.TYPE_29__* %77, %struct.TYPE_29__** %14)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %132

81:                                               ; preds = %74
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  br label %96

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %86
  %97 = phi i8* [ %94, %86 ], [ null, %95 ]
  store i8* %97, i8** %11, align 8
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %100 = call i8* @sqlite3NameFromToken(%struct.TYPE_28__* %98, %struct.TYPE_29__* %99)
  store i8* %100, i8** %10, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %131

103:                                              ; preds = %96
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = call %struct.TYPE_31__* @sqlite3FindIndex(%struct.TYPE_28__* %104, i8* %105, i8* %106)
  store %struct.TYPE_31__* %107, %struct.TYPE_31__** %13, align 8
  %108 = icmp ne %struct.TYPE_31__* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %115 = call i32 @analyzeTable(%struct.TYPE_30__* %110, i32* %113, %struct.TYPE_31__* %114)
  br label %127

116:                                              ; preds = %103
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i32* @sqlite3LocateTable(%struct.TYPE_30__* %117, i32 0, i8* %118, i8* %119)
  store i32* %120, i32** %12, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @analyzeTable(%struct.TYPE_30__* %123, i32* %124, %struct.TYPE_31__* null)
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126, %109
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %128, i8* %129)
  br label %131

131:                                              ; preds = %127, %96
  br label %132

132:                                              ; preds = %131, %74
  br label %133

133:                                              ; preds = %132, %70
  br label %134

134:                                              ; preds = %133, %59
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %141 = call i32* @sqlite3GetVdbe(%struct.TYPE_30__* %140)
  store i32* %141, i32** %15, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* @OP_Expire, align 4
  %146 = call i32 @sqlite3VdbeAddOp0(i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %28, %143, %139, %134
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_28__*) #1

declare dso_local i64 @sqlite3ReadSchema(%struct.TYPE_30__*) #1

declare dso_local i32 @analyzeDatabase(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @sqlite3FindDb(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3TwoPartName(%struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__**) #1

declare dso_local i8* @sqlite3NameFromToken(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_31__* @sqlite3FindIndex(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i32 @analyzeTable(%struct.TYPE_30__*, i32*, %struct.TYPE_31__*) #1

declare dso_local i32* @sqlite3LocateTable(%struct.TYPE_30__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_28__*, i8*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
