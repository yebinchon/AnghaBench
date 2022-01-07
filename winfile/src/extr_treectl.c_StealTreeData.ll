; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_StealTreeData.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_StealTreeData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@GWL_VIEW = common dso_local global i32 0, align 4
@VIEW_PLUSES = common dso_local global i32 0, align 4
@GWL_ATTRIBS = common dso_local global i32 0, align 4
@ATTR_HS = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i64 0, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@GWL_READLEVEL = common dso_local global i32 0, align 4
@FS_GETDIRECTORY = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@IDCW_TREELISTBOX = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@LB_INSERTSTRING = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StealTreeData(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @GetParent(i64 %24)
  %26 = load i32, i32* @GWL_VIEW, align 4
  %27 = call i32 @GetWindowLongPtr(i64 %25, i32 %26)
  %28 = load i32, i32* @VIEW_PLUSES, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @GetParent(i64 %30)
  %32 = load i32, i32* @GWL_ATTRIBS, align 4
  %33 = call i32 @GetWindowLongPtr(i64 %31, i32 %32)
  %34 = load i32, i32* @ATTR_HS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load i64, i64* @hwndMDIClient, align 8
  %37 = load i32, i32* @GW_CHILD, align 4
  %38 = call i64 @GetWindow(i64 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %84, %3
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @HasTreeWindow(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @GWL_READLEVEL, align 4
  %53 = call i32 @GetWindowLongPtr(i64 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @GWL_VIEW, align 4
  %59 = call i32 @GetWindowLongPtr(i64 %57, i32 %58)
  %60 = load i32, i32* @VIEW_PLUSES, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @GWL_ATTRIBS, align 4
  %67 = call i32 @GetWindowLongPtr(i64 %65, i32 %66)
  %68 = load i32, i32* @ATTR_HS, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @FS_GETDIRECTORY, align 4
  %74 = call i64 @COUNTOF(i32* %23)
  %75 = ptrtoint i32* %23 to i64
  %76 = call i64 @SendMessage(i64 %72, i32 %73, i64 %74, i64 %75)
  %77 = call i32 @StripBackslash(i32* %23)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @lstrcmpi(i32 %78, i32* %23)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %88

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %63, %55, %50, %46, %42
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @GW_HWNDNEXT, align 4
  %87 = call i64 @GetWindow(i64 %85, i32 %86)
  store i64 %87, i64* %8, align 8
  br label %39

88:                                               ; preds = %81, %39
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %184

91:                                               ; preds = %88
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* @IDCW_TREELISTBOX, align 4
  %94 = call i64 @GetDlgItem(i64 %92, i32 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i32, i32* @LB_GETCOUNT, align 4
  %97 = call i64 @SendMessage(i64 %95, i32 %96, i64 0, i64 0)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %186

101:                                              ; preds = %91
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %17, align 8
  store i64 0, i64* %18, align 8
  br label %102

102:                                              ; preds = %176, %101
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* @LB_GETTEXT, align 4
  %105 = load i64, i64* %18, align 8
  %106 = ptrtoint %struct.TYPE_3__** %15 to i64
  %107 = call i64 @SendMessage(i64 %103, i32 %104, i64 %105, i64 %106)
  %108 = load i64, i64* @LB_ERR, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %179

110:                                              ; preds = %102
  %111 = load i32, i32* @LPTR, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @lstrlen(i32 %114)
  %116 = call i64 @ByteCountOf(i32 %115)
  %117 = add i64 4, %116
  %118 = call i64 @LocalAlloc(i32 %111, i64 %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %119, %struct.TYPE_3__** %16, align 8
  %120 = icmp ne %struct.TYPE_3__* %119, null
  br i1 %120, label %121, label %175

121:                                              ; preds = %110
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %124 = bitcast %struct.TYPE_3__* %122 to i8*
  %125 = bitcast %struct.TYPE_3__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @lstrcpy(i32 %128, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %134 = icmp ne %struct.TYPE_3__* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %121
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  %143 = icmp eq i64 %138, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store %struct.TYPE_3__* %145, %struct.TYPE_3__** %147, align 8
  br label %159

148:                                              ; preds = %135, %121
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load i64, i64* %18, align 8
  %154 = sub nsw i64 %153, 1
  %155 = load i64, i64* %6, align 8
  %156 = call %struct.TYPE_3__* @FindParent(i64 %152, i64 %154, i64 %155)
  store %struct.TYPE_3__* %156, %struct.TYPE_3__** %17, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  store %struct.TYPE_3__* %156, %struct.TYPE_3__** %158, align 8
  br label %159

159:                                              ; preds = %148, %144
  %160 = load i64, i64* %6, align 8
  %161 = load i32, i32* @LB_INSERTSTRING, align 4
  %162 = load i64, i64* %18, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %164 = ptrtoint %struct.TYPE_3__* %163 to i64
  %165 = call i64 @SendMessage(i64 %160, i32 %161, i64 %162, i64 %164)
  %166 = load i64, i64* %6, align 8
  %167 = load i32, i32* @LB_GETITEMDATA, align 4
  %168 = load i64, i64* %18, align 8
  %169 = call i64 @SendMessage(i64 %166, i32 %167, i64 %168, i64 0)
  %170 = inttoptr i64 %169 to %struct.TYPE_3__*
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %172 = icmp eq %struct.TYPE_3__* %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ASSERT(i32 %173)
  br label %175

175:                                              ; preds = %159, %110
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %18, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %18, align 8
  br label %102

179:                                              ; preds = %102
  %180 = load i64, i64* %6, align 8
  %181 = load i32, i32* @FALSE, align 4
  %182 = call i32 @ResetTreeMax(i64 %180, i32 %181)
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %186

184:                                              ; preds = %88
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %186

186:                                              ; preds = %184, %179, %99
  %187 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowLongPtr(i64, i32) #2

declare dso_local i64 @GetParent(i64) #2

declare dso_local i64 @GetWindow(i64, i32) #2

declare dso_local i64 @HasTreeWindow(i64) #2

declare dso_local i64 @SendMessage(i64, i32, i64, i64) #2

declare dso_local i64 @COUNTOF(i32*) #2

declare dso_local i32 @StripBackslash(i32*) #2

declare dso_local i32 @lstrcmpi(i32, i32*) #2

declare dso_local i64 @GetDlgItem(i64, i32) #2

declare dso_local i64 @LocalAlloc(i32, i64) #2

declare dso_local i64 @ByteCountOf(i32) #2

declare dso_local i32 @lstrlen(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @lstrcpy(i32, i32) #2

declare dso_local %struct.TYPE_3__* @FindParent(i64, i64, i64) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @ResetTreeMax(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
