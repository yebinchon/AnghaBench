; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_undo.c_ME_PlayUndoItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_undo.c_ME_PlayUndoItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i64 }
%struct.undo_item = type { i32, %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__, %struct.TYPE_53__, %struct.TYPE_52__, %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_48__ }
%struct.TYPE_42__ = type { i32, i32, i32, i32, i32, %struct.TYPE_56__*, i32 }
%struct.TYPE_56__ = type { i32, i32 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_50__ = type { i32, i32, i32 }
%struct.TYPE_48__ = type { i32, i32, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_49__*, %struct.TYPE_45__*, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_57__, %struct.TYPE_47__ }
%struct.TYPE_57__ = type { i32, i32 }
%struct.TYPE_47__ = type { i32, %struct.TYPE_45__*, i32, i32 }

@umIgnore = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Playing undo/redo item, id=%d\0A\00", align 1
@diParagraph = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@MEPF_CELL = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_44__*, %struct.undo_item*)* @ME_PlayUndoItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_PlayUndoItem(%struct.TYPE_44__* %0, %struct.undo_item* %1) #0 {
  %3 = alloca %struct.TYPE_44__*, align 8
  %4 = alloca %struct.undo_item*, align 8
  %5 = alloca %struct.TYPE_46__, align 8
  %6 = alloca %struct.TYPE_45__*, align 8
  %7 = alloca %struct.TYPE_46__, align 8
  %8 = alloca %struct.TYPE_46__, align 8
  %9 = alloca %struct.TYPE_46__, align 8
  %10 = alloca %struct.TYPE_46__, align 8
  %11 = alloca %struct.TYPE_46__, align 8
  %12 = alloca %struct.TYPE_46__, align 8
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca %struct.TYPE_45__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_45__*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %3, align 8
  store %struct.undo_item* %1, %struct.undo_item** %4, align 8
  %18 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @umIgnore, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %283

24:                                               ; preds = %2
  %25 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %26 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %30 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %283 [
    i32 131, label %32
    i32 134, label %32
    i32 129, label %34
    i32 130, label %72
    i32 133, label %96
    i32 135, label %126
    i32 132, label %142
    i32 128, label %155
  ]

32:                                               ; preds = %24, %24
  %33 = call i32 @assert(i32 0)
  br label %34

34:                                               ; preds = %24, %32
  %35 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %36 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %37 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_44__* %35, i32 %40, %struct.TYPE_46__* %5)
  %42 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %5, i32 0, i32 0
  %43 = load %struct.TYPE_49__*, %struct.TYPE_49__** %42, align 8
  %44 = load i32, i32* @diParagraph, align 4
  %45 = call %struct.TYPE_45__* @ME_FindItemBack(%struct.TYPE_49__* %43, i32 %44)
  store %struct.TYPE_45__* %45, %struct.TYPE_45__** %6, align 8
  %46 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %47 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 1
  %50 = call i32 @add_undo_set_para_fmt(%struct.TYPE_44__* %46, %struct.TYPE_47__* %49)
  %51 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %52 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %58, i32 0, i32 3
  store i32 %55, i32* %59, align 4
  %60 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %61 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 8
  %69 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %70 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %71 = call i32 @mark_para_rewrap(%struct.TYPE_44__* %69, %struct.TYPE_45__* %70)
  br label %283

72:                                               ; preds = %24
  %73 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %74 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %75 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_44__* %73, i32 %78, %struct.TYPE_46__* %7)
  %80 = bitcast %struct.TYPE_46__* %8 to i8*
  %81 = bitcast %struct.TYPE_46__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false)
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %83 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %84 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @ME_MoveCursorChars(%struct.TYPE_44__* %82, %struct.TYPE_46__* %8, i32 %87, i32 %88)
  %90 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %91 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %92 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %93, i32 0, i32 0
  %95 = call i32 @ME_SetCharFormat(%struct.TYPE_44__* %90, %struct.TYPE_46__* %7, %struct.TYPE_46__* %8, i32* %94)
  br label %283

96:                                               ; preds = %24
  %97 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %98 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %99 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_44__* %97, i32 %102, %struct.TYPE_46__* %9)
  %104 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %105 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %106 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %111 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %116 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %121 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ME_InsertRunAtCursor(%struct.TYPE_44__* %104, %struct.TYPE_46__* %9, i32 %109, i32 %114, i32 %119, i32 %124)
  br label %283

126:                                              ; preds = %24
  %127 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %128 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %129 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_44__* %127, i32 %132, %struct.TYPE_46__* %10)
  %134 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %135 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %136 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i32 @ME_InternalDeleteText(%struct.TYPE_44__* %134, %struct.TYPE_46__* %10, i32 %139, i32 %140)
  br label %283

142:                                              ; preds = %24
  %143 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %144 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %145 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_44__* %143, i32 %148, %struct.TYPE_46__* %11)
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %11, i32 0, i32 1
  %152 = load %struct.TYPE_45__*, %struct.TYPE_45__** %151, align 8
  %153 = load i32, i32* @TRUE, align 4
  %154 = call i32 @ME_JoinParagraphs(%struct.TYPE_44__* %150, %struct.TYPE_45__* %152, i32 %153)
  br label %283

155:                                              ; preds = %24
  %156 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %157 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MEPF_ROWSTART, align 4
  %162 = load i32, i32* @MEPF_CELL, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @MEPF_ROWEND, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %160, %165
  store i32 %166, i32* %16, align 4
  %167 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %168 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %169 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_44__* %167, i32 %172, %struct.TYPE_46__* %12)
  %174 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %12, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %155
  %178 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %179 = call i32 @ME_SplitRunSimple(%struct.TYPE_44__* %178, %struct.TYPE_46__* %12)
  br label %180

180:                                              ; preds = %177, %155
  %181 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %12, i32 0, i32 1
  %182 = load %struct.TYPE_45__*, %struct.TYPE_45__** %181, align 8
  store %struct.TYPE_45__* %182, %struct.TYPE_45__** %13, align 8
  %183 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MEPF_ROWSTART, align 4
  %189 = and i32 %187, %188
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %180
  %193 = load i32, i32* @MEPF_ROWSTART, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, %194
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %192, %180
  %202 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %12, i32 0, i32 0
  %204 = load %struct.TYPE_49__*, %struct.TYPE_49__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %12, i32 0, i32 0
  %206 = load %struct.TYPE_49__*, %struct.TYPE_49__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %212 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_56__*, %struct.TYPE_56__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %219 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_56__*, %struct.TYPE_56__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %16, align 4
  %226 = call %struct.TYPE_45__* @ME_SplitParagraph(%struct.TYPE_44__* %202, %struct.TYPE_49__* %204, i32 %210, i32 %217, i32 %224, i32 %225)
  store %struct.TYPE_45__* %226, %struct.TYPE_45__** %14, align 8
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %201
  %230 = load i32, i32* @MEPF_ROWSTART, align 4
  %231 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %230
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %229, %201
  %238 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %239 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %245, i32 0, i32 3
  store i32 %242, i32* %246, align 4
  %247 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %248 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %254, i32 0, i32 2
  store i32 %251, i32* %255, align 8
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %237
  %259 = load %struct.TYPE_45__*, %struct.TYPE_45__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_45__*, %struct.TYPE_45__** %262, align 8
  store %struct.TYPE_45__* %263, %struct.TYPE_45__** %17, align 8
  %264 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %265 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %271, i32 0, i32 1
  store i32 %268, i32* %272, align 4
  %273 = load %struct.undo_item*, %struct.undo_item** %4, align 8
  %274 = getelementptr inbounds %struct.undo_item, %struct.undo_item* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %279 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %280, i32 0, i32 0
  store i32 %277, i32* %281, align 8
  br label %282

282:                                              ; preds = %258, %237
  br label %283

283:                                              ; preds = %23, %24, %282, %142, %126, %96, %72, %34
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ME_CursorFromCharOfs(%struct.TYPE_44__*, i32, %struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_45__* @ME_FindItemBack(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @add_undo_set_para_fmt(%struct.TYPE_44__*, %struct.TYPE_47__*) #1

declare dso_local i32 @mark_para_rewrap(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ME_MoveCursorChars(%struct.TYPE_44__*, %struct.TYPE_46__*, i32, i32) #1

declare dso_local i32 @ME_SetCharFormat(%struct.TYPE_44__*, %struct.TYPE_46__*, %struct.TYPE_46__*, i32*) #1

declare dso_local i32 @ME_InsertRunAtCursor(%struct.TYPE_44__*, %struct.TYPE_46__*, i32, i32, i32, i32) #1

declare dso_local i32 @ME_InternalDeleteText(%struct.TYPE_44__*, %struct.TYPE_46__*, i32, i32) #1

declare dso_local i32 @ME_JoinParagraphs(%struct.TYPE_44__*, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @ME_SplitRunSimple(%struct.TYPE_44__*, %struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_45__* @ME_SplitParagraph(%struct.TYPE_44__*, %struct.TYPE_49__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
