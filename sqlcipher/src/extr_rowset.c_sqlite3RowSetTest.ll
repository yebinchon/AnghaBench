; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_rowset.c_sqlite3RowSetTest.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_rowset.c_sqlite3RowSetTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.RowSetEntry*, i64, %struct.RowSetEntry* }
%struct.RowSetEntry = type { i64, %struct.RowSetEntry*, %struct.RowSetEntry* }

@ROWSET_NEXT = common dso_local global i32 0, align 4
@ROWSET_SORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3RowSetTest(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.RowSetEntry*, align 8
  %9 = alloca %struct.RowSetEntry*, align 8
  %10 = alloca %struct.RowSetEntry**, align 8
  %11 = alloca %struct.RowSetEntry*, align 8
  %12 = alloca %struct.RowSetEntry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ROWSET_NEXT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %15, %3
  %23 = phi i1 [ false, %3 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %118

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load %struct.RowSetEntry*, %struct.RowSetEntry** %33, align 8
  store %struct.RowSetEntry* %34, %struct.RowSetEntry** %8, align 8
  %35 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %36 = icmp ne %struct.RowSetEntry* %35, null
  br i1 %36, label %37, label %114

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.RowSetEntry** %39, %struct.RowSetEntry*** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ROWSET_SORTED, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %48 = call %struct.RowSetEntry* @rowSetEntrySort(%struct.RowSetEntry* %47)
  store %struct.RowSetEntry* %48, %struct.RowSetEntry** %8, align 8
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.RowSetEntry*, %struct.RowSetEntry** %51, align 8
  store %struct.RowSetEntry* %52, %struct.RowSetEntry** %9, align 8
  br label %53

53:                                               ; preds = %80, %49
  %54 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %55 = icmp ne %struct.RowSetEntry* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %58 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %57, i32 0, i32 2
  store %struct.RowSetEntry** %58, %struct.RowSetEntry*** %10, align 8
  %59 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %60 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %59, i32 0, i32 1
  %61 = load %struct.RowSetEntry*, %struct.RowSetEntry** %60, align 8
  %62 = icmp eq %struct.RowSetEntry* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %65 = call i8* @rowSetListToTree(%struct.RowSetEntry* %64)
  %66 = bitcast i8* %65 to %struct.RowSetEntry*
  %67 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %68 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %67, i32 0, i32 1
  store %struct.RowSetEntry* %66, %struct.RowSetEntry** %68, align 8
  br label %84

69:                                               ; preds = %56
  %70 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %71 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %70, i32 0, i32 1
  %72 = load %struct.RowSetEntry*, %struct.RowSetEntry** %71, align 8
  %73 = call i32 @rowSetTreeToList(%struct.RowSetEntry* %72, %struct.RowSetEntry** %11, %struct.RowSetEntry** %12)
  %74 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %75 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %74, i32 0, i32 1
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %75, align 8
  %76 = load %struct.RowSetEntry*, %struct.RowSetEntry** %11, align 8
  %77 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %78 = call %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry* %76, %struct.RowSetEntry* %77)
  store %struct.RowSetEntry* %78, %struct.RowSetEntry** %8, align 8
  br label %79

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %82 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %81, i32 0, i32 2
  %83 = load %struct.RowSetEntry*, %struct.RowSetEntry** %82, align 8
  store %struct.RowSetEntry* %83, %struct.RowSetEntry** %9, align 8
  br label %53

84:                                               ; preds = %63, %53
  %85 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %86 = icmp eq %struct.RowSetEntry* %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = call %struct.RowSetEntry* @rowSetEntryAlloc(%struct.TYPE_4__* %88)
  store %struct.RowSetEntry* %89, %struct.RowSetEntry** %9, align 8
  %90 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %10, align 8
  store %struct.RowSetEntry* %89, %struct.RowSetEntry** %90, align 8
  %91 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %92 = icmp ne %struct.RowSetEntry* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %95 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %97 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %96, i32 0, i32 2
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %97, align 8
  %98 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %99 = call i8* @rowSetListToTree(%struct.RowSetEntry* %98)
  %100 = bitcast i8* %99 to %struct.RowSetEntry*
  %101 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %102 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %101, i32 0, i32 1
  store %struct.RowSetEntry* %100, %struct.RowSetEntry** %102, align 8
  br label %103

103:                                              ; preds = %93, %87
  br label %104

104:                                              ; preds = %103, %84
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @ROWSET_SORTED, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %104, %31
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %22
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load %struct.RowSetEntry*, %struct.RowSetEntry** %120, align 8
  store %struct.RowSetEntry* %121, %struct.RowSetEntry** %9, align 8
  br label %122

122:                                              ; preds = %156, %118
  %123 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %124 = icmp ne %struct.RowSetEntry* %123, null
  br i1 %124, label %125, label %160

125:                                              ; preds = %122
  %126 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %127 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %126, i32 0, i32 1
  %128 = load %struct.RowSetEntry*, %struct.RowSetEntry** %127, align 8
  store %struct.RowSetEntry* %128, %struct.RowSetEntry** %8, align 8
  br label %129

129:                                              ; preds = %154, %125
  %130 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %131 = icmp ne %struct.RowSetEntry* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %129
  %133 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %134 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %140 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %139, i32 0, i32 2
  %141 = load %struct.RowSetEntry*, %struct.RowSetEntry** %140, align 8
  store %struct.RowSetEntry* %141, %struct.RowSetEntry** %8, align 8
  br label %154

142:                                              ; preds = %132
  %143 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %144 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %150 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %149, i32 0, i32 1
  %151 = load %struct.RowSetEntry*, %struct.RowSetEntry** %150, align 8
  store %struct.RowSetEntry* %151, %struct.RowSetEntry** %8, align 8
  br label %153

152:                                              ; preds = %142
  store i32 1, i32* %4, align 4
  br label %161

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %153, %138
  br label %129

155:                                              ; preds = %129
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.RowSetEntry*, %struct.RowSetEntry** %9, align 8
  %158 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %157, i32 0, i32 2
  %159 = load %struct.RowSetEntry*, %struct.RowSetEntry** %158, align 8
  store %struct.RowSetEntry* %159, %struct.RowSetEntry** %9, align 8
  br label %122

160:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %152
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.RowSetEntry* @rowSetEntrySort(%struct.RowSetEntry*) #1

declare dso_local i8* @rowSetListToTree(%struct.RowSetEntry*) #1

declare dso_local i32 @rowSetTreeToList(%struct.RowSetEntry*, %struct.RowSetEntry**, %struct.RowSetEntry**) #1

declare dso_local %struct.RowSetEntry* @rowSetEntryMerge(%struct.RowSetEntry*, %struct.RowSetEntry*) #1

declare dso_local %struct.RowSetEntry* @rowSetEntryAlloc(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
