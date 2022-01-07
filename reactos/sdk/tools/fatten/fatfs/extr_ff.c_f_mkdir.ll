; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_mkdir.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64, i32, i8, i32, i64 }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@FR_EXIST = common dso_local global i64 0, align 8
@_FS_RPATH = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@NSFLAG = common dso_local global i64 0, align 8
@NS_DOT = common dso_local global i32 0, align 4
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@FR_DENIED = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@DIR_Name = common dso_local global i32 0, align 4
@AM_DIR = common dso_local global i8 0, align 1
@DIR_Attr = common dso_local global i64 0, align 8
@DIR_CrtTime = common dso_local global i32 0, align 4
@DIR_WrtTime = common dso_local global i32 0, align 4
@SZ_DIRE = common dso_local global i32 0, align 4
@FS_FAT32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_mkdir(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = call i32 (...) @GET_FATTIME()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %15 = call i64 @find_volume(%struct.TYPE_14__** %14, i32** %3, i32 1)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @FR_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %238

19:                                               ; preds = %1
  %20 = call i32 @INIT_BUF(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %5)
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @follow_path(%struct.TYPE_13__* %5, i32* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* @FR_EXIST, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i64, i64* @_FS_RPATH, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @FR_NO_FILE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @NSFLAG, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NS_DOT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %35, %31, %28
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @FR_NO_FILE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %236

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = call i32 @create_chain(%struct.TYPE_14__* %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* @FR_OK, align 8
  store i64 %54, i64* %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* @FR_DENIED, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @FR_OK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = call i64 @sync_window(%struct.TYPE_14__* %75)
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @FR_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %192

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @clust2sect(%struct.TYPE_14__* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = call i32 @SS(%struct.TYPE_14__* %92)
  %94 = call i32 @mem_set(i8* %90, i8 signext 0, i32 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* @DIR_Name, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 @mem_set(i8* %98, i8 signext 32, i32 11)
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @DIR_Name, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 46, i8* %103, align 1
  %104 = load i8, i8* @AM_DIR, align 1
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* @DIR_Attr, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %107, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* @DIR_CrtTime, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @ST_DWORD(i8* %111, i32 %112)
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* @DIR_WrtTime, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @ST_DWORD(i8* %117, i32 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @st_clust(i8* %120, i32 %121)
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* @SZ_DIRE, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* @SZ_DIRE, align 4
  %129 = call i32 @mem_cpy(i8* %126, i8* %127, i32 %128)
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* @SZ_DIRE, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 46, i8* %134, align 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %10, align 4
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @FS_FAT32, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %81
  %144 = load i32, i32* %10, align 4
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %144, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %143, %81
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* @SZ_DIRE, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @st_clust(i8* %155, i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  %161 = load i8, i8* %160, align 4
  store i8 %161, i8* %7, align 1
  br label %162

162:                                              ; preds = %188, %151
  %163 = load i8, i8* %7, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %162
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 5
  store i64 %168, i64* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  store i32 1, i32* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = call i64 @sync_window(%struct.TYPE_14__* %176)
  store i64 %177, i64* %4, align 8
  %178 = load i64, i64* %4, align 8
  %179 = load i64, i64* @FR_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  br label %191

182:                                              ; preds = %165
  %183 = load i8*, i8** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = call i32 @SS(%struct.TYPE_14__* %185)
  %187 = call i32 @mem_set(i8* %183, i8 signext 0, i32 %186)
  br label %188

188:                                              ; preds = %182
  %189 = load i8, i8* %7, align 1
  %190 = add i8 %189, -1
  store i8 %190, i8* %7, align 1
  br label %162

191:                                              ; preds = %181, %162
  br label %192

192:                                              ; preds = %191, %77
  %193 = load i64, i64* %4, align 8
  %194 = load i64, i64* @FR_OK, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = call i64 @dir_register(%struct.TYPE_13__* %5)
  store i64 %197, i64* %4, align 8
  br label %198

198:                                              ; preds = %196, %192
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @FR_OK, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @remove_chain(%struct.TYPE_14__* %204, i32 %205)
  br label %235

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %6, align 8
  %210 = load i8, i8* @AM_DIR, align 1
  %211 = load i8*, i8** %6, align 8
  %212 = load i64, i64* @DIR_Attr, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8 %210, i8* %213, align 1
  %214 = load i8*, i8** %6, align 8
  %215 = load i32, i32* @DIR_CrtTime, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @ST_DWORD(i8* %217, i32 %218)
  %220 = load i8*, i8** %6, align 8
  %221 = load i32, i32* @DIR_WrtTime, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @ST_DWORD(i8* %223, i32 %224)
  %226 = load i8*, i8** %6, align 8
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @st_clust(i8* %226, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 4
  store i32 1, i32* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = call i64 @sync_fs(%struct.TYPE_14__* %233)
  store i64 %234, i64* %4, align 8
  br label %235

235:                                              ; preds = %207, %202
  br label %236

236:                                              ; preds = %235, %46
  %237 = call i32 (...) @FREE_BUF()
  br label %238

238:                                              ; preds = %236, %1
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = load i64, i64* %4, align 8
  %242 = call i32 @LEAVE_FF(%struct.TYPE_14__* %240, i64 %241)
  %243 = load i64, i64* %2, align 8
  ret i64 %243
}

declare dso_local i32 @GET_FATTIME(...) #1

declare dso_local i64 @find_volume(%struct.TYPE_14__**, i32**, i32) #1

declare dso_local i32 @INIT_BUF(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8) #1

declare dso_local i64 @follow_path(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @create_chain(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @sync_window(%struct.TYPE_14__*) #1

declare dso_local i32 @clust2sect(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mem_set(i8*, i8 signext, i32) #1

declare dso_local i32 @SS(%struct.TYPE_14__*) #1

declare dso_local i32 @ST_DWORD(i8*, i32) #1

declare dso_local i32 @st_clust(i8*, i32) #1

declare dso_local i32 @mem_cpy(i8*, i8*, i32) #1

declare dso_local i64 @dir_register(%struct.TYPE_13__*) #1

declare dso_local i32 @remove_chain(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @sync_fs(%struct.TYPE_14__*) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
